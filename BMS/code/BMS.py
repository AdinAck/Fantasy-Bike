# Battery Management System Embedded OS
# https://github.com/AdinAck/Fantasy-Bike/tree/master/BMS
# Please feel free to post issues or questions on the GitHub repository.
# By Adin Ackerman and Artin Kim
# ======================================================================================================================

# NVM Index:
# 0x0: 0 if measurement/battery fault has not been detected
#      1 if measurement/battery fault has been detected

import microcontroller
import time
from digitalio import Direction

class BMS:
    def __init__(self, ADS1248, mcpArr, tmpArr, buzzer, relay, fan):
        self.mode = 0 # 0 = idle, 1 = chg/dschg/storage, 2 = shutdown
        BMS.ADS1248 = ADS1248
        ADS1248.wakeupAll()
        ADS1248.wregAll(2,[0x40,0x00])
        print("[INFO] Calibrating ADCs.")
        ADS1248.selfOffsetAll()
        self.cellCount = 20
        self.drain = [0]*24

        self.mcpArr = mcpArr
        for mcp in self.mcpArr:
            mcp.iodir = 0x00
            mcp.gpio = 0x00

        self.tmpArr = tmpArr
        self.temps = [0]*len(tmpArr)
        self.maxTemp = 70
        self.fan = fan

        self.buz = buzzer
        self.relay = relay

        self.cellPos = [18, 15, 12, 6, 3, 9, 0, 7, 16, 13, 10, 19, 1, 4, 20, 17, 11, 5, 2, 14]
        self.cellCoords =[(4,3), (4,2), (4,1), (4,0), (3,0), (3,1), (3,2), (3,3), (2,3), (2,2),
                          (2,1), (2,0), (1,0), (1,1), (1,2), (1,3), (0,3), (0,2), (0,1), (0,0)]
        self.dxy = [(-1,0),(1,0),(0,-1),(0,1)]
        self.cells = [0]*self.cellCount
        self.minVoltage = 3.5
        self.maxVoltage = 4.2
        self.targetVoltage = 3.85
        self.dV = .01
        self.chgTime = 60
        self.balTime = 15
        self.measureError = .005

        self.log = open("battVoltages.log", "w")

        self.verbose = False

        if microcontroller.nvm[0] == 1:
            print("[ALERT] A measurement error or severe battery error occured during previous operation.")
            microcontroller.nvm[0] = 0

        self.getCells()
        self.lastCells = list(self.cells)

    def getCells(self):
        if self.verbose:
            print("[INFO] Checking cells...")
        cellRead = BMS.ADS1248.fetchAll(3,[0,1,2,4,5,6,7])
        for i in range(20):
            self.cells[i] = cellRead[self.cellPos[i]]
        self.log.write(self.cells)
        self.battVoltage = sum(self.cells)
        self.capacity = round((100/(84-68))*(self.battVoltage-68))

    def getTemps(self):
        self.temps = [None]*len(self.tmpArr)
        for i in range(len(self.tmpArr)):
            self.temps[i] = (150/1.5)*((self.tmpArr[i].value*3.3/65536)-.5)
        self.temps.append(microcontroller.cpu.temperature)
        self.temps = [round(i,2) for i in self.temps]
        if self.verbose:
            print("[INFO] Board temperatures:", [str(i)+"C" for i in self.temps])
        # duty = (65535/30)*(max(self.temps)-30)
        # self.fan.duty_cycle = 0 if duty < 0 else 65535 if duty > 65535 else duty
        if max(self.temps) > 40:
            self.fan.value = True
        else:
            self.fan.value = False
        if max(self.temps) > self.maxTemp + 20:
            print("[ALERT] Thermal shutdown.")
            self.buz.value = True
            self.mode = 2
            return True
        else:
            return False

    def sendIO(self):
        for i in range(len(self.mcpArr)):
            send = 0
            for j in range(len(self.drain[8*i:8*(i+1)])):
                if self.drain[8*i:8*(i+1)][j] == 1:
                    send += 2**j
            self.mcpArr[i].gpio = send

    def balance(self):
        # Target voltage is within min and max voltage
        if self.targetVoltage < self.minVoltage or self.targetVoltage > self.maxVoltage:
            print("[ALERT] Target voltage exceeds acceptable voltage range, terminating charge/balance cycle.")
            self.buz.value = True
            self.relay.value = False
            self.mode = 0
            self.drain = [0]*self.cellCount
            self.sendIO()
            time.sleep(1)
            return
        # Lowest cell is below minimum voltage or highest cell is below target voltage and not too close (to reduce overshooting)
        elif self.minCell < self.minVoltage or self.maxCell < self.targetVoltage - self.dV:
            if self.verbose:
                print("[INFO] Maximum cell voltage is {}v less than target cell voltage.".format(self.targetVoltage-self.maxCell))
            print("[INFO] Charging...")
            self.relay.value = True
            for i in range(self.chgTime//8):
                if self.getTemps():
                    print("[ALERT] Possible MOSFET failure while charging. Shutting down.")
                    self.buz.value = True
                    self.mode = 2
                    return
                time.sleep(8)
        elif max(self.temps) > self.maxTemp:
            print("[INFO] Temperature is too high for balancing.")
        # If cells are not balanced or are above target voltage
        elif (self.maxCell - self.minCell > self.dV or self.minCell > self.targetVoltage + self.measureError) and self.minCell > self.minVoltage:
            self.relay.value = False # Make sure charger is disconnected
            if self.maxCell - self.minCell > self.dV: # If cells are not balanced set target to minimum cell
                target = self.minCell
                if self.verbose:
                    print("[INFO] Maximum cell voltage delta is {0} which exceeds {1}.".format(self.maxCell-target,self.dV))
                print("[INFO] Balancing...")
            elif self.minCell > self.targetVoltage + self.measureError: # Elif cells are above target voltage, set target to target voltage
                target = self.targetVoltage
                if self.verbose:
                    print("[INFO] Minimum cell voltage is {}v more than target cell voltage.".format(self.minCell-self.targetVoltage))
                print("[INFO] Discharging...")

            toDschg = []
            for i in range(self.cellCount):
                if self.cells[i] > target + self.measureError:
                    toDschg.append(i)
                else: self.drain[i] = 0
            toDschg = sorted(toDschg,key=lambda x: self.cells[x],reverse=True)
            print([self.cells[toDschg[i]] for i in range(len(toDschg))])
            print(toDschg)
            self.drain[toDschg[0]] = 1
            last = toDschg[0]
            if self.verbose:
                print("[INFO] Discharging cells at following coordinates:")
                print(self.cellCoords[last])
            dischging = [[False for i in range(4)] for i in range(5)]
            dischging[self.cellCoords[last][0]][self.cellCoords[last][1]] = True
            for i in range(1,len(toDschg)):
                skip = False
                for j in range(4):
                    neighbor = self.cellCoords[toDschg[i]][0]+self.dxy[j][0], self.cellCoords[toDschg[i]][1]+self.dxy[j][1]
                    if neighbor[0] < 0 or neighbor[1] < 0 or neighbor[0] > 4 or neighbor[1] > 3:
                        continue
                    if dischging[neighbor[0]][neighbor[1]]:
                        skip = True
                        break
                if not skip:
                    self.drain[toDschg[i]] = 1
                    dischging[self.cellCoords[toDschg[i]][0]][self.cellCoords[toDschg[i]][1]] = True
                    if self.verbose:
                        print(self.cellCoords[toDschg[i]])
                    last = toDschg[i]
            if self.verbose:
                for i in range(len(dischging)):
                    for j in range(len(dischging[i])):
                        print(int(dischging[i][j]),end=" ")
                    print()
            # Now that cells have been selected for discharging, send drain array to IO expanders
            self.sendIO()
            # Monitor temperature while discharging
            for i in range(self.balTime//8):
                self.getTemps():
                if max(self.temps) > self.maxTemp:
                    print("[INFO] Temperature exceeded maximum permitted temperature while balancing.")
                    break
                time.sleep(8)
            # Clear drain for next update
            self.drain = [0]*self.cellCount
        else:
            print("[INFO] Charge/balance complete.")
            self.mode = 0

    def update(self):
        if self.mode == 0 or self.mode == 1:
            self.sendIO()
            if self.mode == 1:
                print("[INFO] Allowing cells to settle...")
                time.sleep(5)
            self.getCells()
            dCells = []
            for i in range(self.cellCount):
                dCells.append(self.cells[i]-self.lastCells[i])
            if max(dCells) > .1:
                self.buz.value = True
                print("[ALERT] Cell voltage increased rapidly between measurements.\
                       \n\t This could be due to a faulty measurement, or a severe battery issue.\
                       \n\t To avoid possible damage the BMS will shut down.")
                microcontroller.nvm[0] = 1
                self.mode = 2
            elif min(dCells) < -.5:
                self.buz.value = True
                print("[ALERT] Cell voltage decreased rapidly between measurements.\
                       \n\t This could be due to a faulty measurement, or a severe battery issue.\
                       \n\t To avoid possible damage the BMS will shut down.")
                microcontroller.nvm[0] = 1
                self.mode = 2

            if self.mode == 2:
                print("[INFO] Change in voltage per cell:",dCells)

            self.lastCells = list(self.cells)
            print("[INFO] All cell voltages:\n",self.cells)
            print("[INFO] Battery voltage:",self.battVoltage)
            print("[INFO] Battery capacity:",self.capacity)
            if self.mode == 2:
                return
            self.buz.value = False
            for i in range(self.cellCount):
                if self.cells[i] > self.maxVoltage:
                    self.buz.value = True
                    print("\n[ALERT] Cell_{0} is above maximum voltage of {1} at {2}!\n".format(i,self.maxVoltage, self.cells[i]))
                    self.mode = 2
                elif self.cells[i] < self.minVoltage:
                    self.buz.value = True
                    print("\n[ALERT] Cell_{0} is below minimum voltage of {1} at {2}!\n".format(i,self.minVoltage, self.cells[i]))
                    self.mode = 2
            if self.mode == 2:
                return

            self.minCell = min(self.cells)
            self.maxCell = max(self.cells)
            self.minCellIndex = self.cells.index(self.minCell)
            self.maxCellindex = self.cells.index(self.maxCell)
            if self.verbose:
                print("[INFO] Minimum cell is Cell_{0} with voltage of {1}.".format(self.minCellIndex,self.minCell))
                print("[INFO] Maximum cell is Cell_{0} with voltage of {1}.".format(self.maxCellindex,self.maxCell))

            if self.getTemps():
                return

        if self.mode == 1:
            if max(self.temps) < self.maxTemp:
                status = self.balance()
            else:
                print("[INFO] Unable to charge/balance due to high temperatures.")

        elif self.mode == 2:
            self.relay.value = False
            self.drain = [0]*self.cellCount
            self.sendIO()
            BMS.ADS1248.sleepAll()

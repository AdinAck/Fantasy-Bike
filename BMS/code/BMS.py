import time
from digitalio import Direction

class BMS:
    def __init__(self, ADS1248, mcpArr, buzzer, relay):
        self.mode = 0 # 0 = idle, 1 = chg/dschg/storage, 2 = shutdown
        BMS.ADS1248 = ADS1248
        self.cellCount = 20
        self.drain = [0]*24

        self.mcpArr = mcpArr
        for mcp in self.mcpArr:
            mcp.iodir = 0x00
            mcp.gpio = 0x00

        self.buz = buzzer
        self.relay = relay
        self.cellPos = [18, 15, 12, 6, 3, 9, 0, 7, 16, 13, 10, 19, 1, 4, 20, 17, 11, 5, 2, 14]
        self.cells = [0]*self.cellCount

        self.minVoltage = 3.5
        self.maxVoltage = 4.2
        self.targetVoltage = 3.85

        self.dV = .01
        self.chgTime = 60
        self.balTime = 15
        self.measureError = .005
        self.verbose = False

    def sendIO(self):
        for i in range(len(self.mcpArr)):
            send = 0
            for j in range(len(self.drain[8*i:8*(i+1)])):
                if self.drain[8*i:8*(i+1)][j] == 1:
                    send += 2**j
            self.mcpArr[i].gpio = send

    def balance(self):
        print("[BALANCE] Balancing...")
        avg = sum(self.cells)/self.cellCount
        if self.maxCell - self.minCell > self.dV:
            if self.verbose:
                print("[BALANCE] Maximum cell voltage delta is {0} which exceeds {1}.".format(self.maxCell-self.minCell,self.dV))
                for i in range(self.cellCount):
                    if cells[i] > self.minCell + self.measureError:
                        self.drain[i] = 1
                    else: self.drain[i] = 0
            return 0
        elif avg > self.targetVoltage + self.measureError:
            if self.verbose:
                print("[BALANCE] Average cell voltage is {}v more than target cell voltage.".format(avg-self.targetVoltage))
            return 1
        elif avg < self.targetVoltage - self.measureError:
            if self.verbose:
                print("[BALANCE] Average cell voltage is {}v less than target cell voltage.".format(self.targetVoltage-avg))
            return 2
        else:
            print("[BALANCE] Charge and balance are not required.")
            return 3

    def update(self):
        if self.mode == 0 or self.mode == 1:
            self.sendIO()
            if self.verbose:
                print("[INFO] Checking cells...")
            cellRead = BMS.ADS1248.fetchAll(3,[0,1,2,4,5,6,7])
            for i in range(20):
                self.cells[i] = cellRead[self.cellPos[i]]
            self.buz.value = False
            for i in range(self.cellCount):
                if self.cells[i] > self.maxVoltage:
                    self.buz.value = True
                    print("[ALARM] Cell_{0} is above maximum voltage of {1} at {2}!".format(i,self.maxVoltage, self.cells[i]))
                elif self.cells[i] < self.minVoltage:
                    self.buz.value = True
                    print("[ALARM] Cell_{0} is below minimum voltage of {1} at {2}!".format(i,self.minVoltage, self.cells[i]))

            self.minCell = min(self.cells)
            self.maxCell = max(self.cells)
            self.minCellIndex = self.cells.index(self.minCell)
            self.maxCellindex = self.cells.index(self.maxCell)
            if self.verbose:
                print("[INFO] Minimum cell is Cell_{0} with voltage of {1}.".format(self.minCellIndex+1,self.minCell))
                print("[INFO] Maximum cell is Cell_{0} with voltage of {1}.".format(self.maxCellindex+1,self.maxCell))

        if self.mode == 1:
            if self.maxCell < self.targetVoltage - self.measureError:
                status = self.balance()
                if status == 0:
                    self.relay.value = False
                elif status == 1:
                    self.relay.value = False
                elif status == 2:
                    if self.verbose:
                        print("[CHARGE] Charging for {} seconds...".format(self.chTime))
                    self.relay.value = True
                    time.sleep(self.chgTime)
                else:
                    self.relay.value = False
                    if self.verbose:
                        print("[CHARGE] Waiting for battery to settle...")
                    time.sleep(5)
                    print("[CHARGE] Charging complete, switching mode to idle.")
                    self.mode = 0

        elif self.mode == 2:
            self.drain = [0]*len(self.drain)
            self.sendIO()
            ADS1248.sleepAll()

import time

class BMS:
    def __init__(self, ADS1248, buzzer, relay):
        self.mode = 0 # 0 = idle, 1 = chg, 2 = dschg, 3 = shutdown
        BMS.ADS1248 = ADS1248
        self.balancing = False

        self.buz = buzzer
        self.relay = relay
        self.cellPos = [18, 15, 12, 6, 3, 9, 0, 7, 16, 13, 10, 19, 1, 4, 20, 17, 11, 5, 2, 14]
        self.cells = [0]*20

        self.minVoltage = 3.5
        self.maxVoltage = 4.096

        self.dV = .01
        self.chgTime = 30
        self.balTime = 8
        self.measureError = .005

    def balance(self):
        if self.maxCell - self.minCell > self.dV and min(self.cells) > self.maxVoltage + self.measureError:
            self.balancing = True
            print("[BALANCE] [INFO] Maximum cell voltage difference is {0} which exceeds {1}.".format(self.maxCell-self.minCell,self.dV))
            print("[BALANCE] [INFO] Balancing...")
        else:
            self.balancing = False

    def battCheck(self):
        if self.mode == 1:
            self.relay.value = False
            print("[BATTCHECK] [CHARGE] Waiting for battery rebound...")
            time.sleep(5)
        print("[BATTCHECK] [INFO] Checking cells...")
        cellRead = BMS.ADS1248.fetchAll(3,[0,1,2,4,5,6,7])
        for i in range(20):
            self.cells[i] = cellRead[self.cellPos[i]]
        self.buz.value = False
        for i in range(len(self.cells)):
            if self.cells[i] > self.maxVoltage:
                self.buz.value = True
                print("[BATTCHECK] [ALARM] Cell_{0} is above maximum voltage of {1} at {2}!".format(i,self.maxVoltage, self.cells[i]))
            elif self.cells[i] < self.minVoltage:
                self.buz.value = True
                print("[BATTCHECK] [ALARM] Cell_{0} is below minimum voltage of {1} at {2}!".format(i,self.minVoltage, self.cells[i]))

        self.minCell = min(self.cells)
        self.maxCell = max(self.cells)
        self.minCellIndex = self.cells.index(self.minCell)
        self.maxCellindex = self.cells.index(self.maxCell)
        print("[BATTCHECK] [INFO] Minimum cell is Cell_{0} with voltage of {1}.".format(self.minCellIndex+1,self.minCell))
        print("[BATTCHECK] [INFO] Maximum cell is Cell_{0} with voltage of {1}.".format(self.maxCellindex+1,self.maxCell))

        if self.mode == 1:
            if self.maxCell < self.maxVoltage:
                print("[BATTCHECK] [CHARGE] Charging for {} seconds...")
                self.relay.value = True
                time.sleep(self.chgTime)
                self.balance()
            elif not self.balancing:
                self.mode = 0

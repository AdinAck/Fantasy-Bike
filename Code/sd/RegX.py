class RegX:
    def __init__(self,name=None):
        if name is not None:
            self.name = name
        else:
            self.name = "temp"
        try:
            f = open("/sd/reg"+self.name+".reg","r")
            regRead = f.read()
            f.close()
            print("["+self.name+"] "+"Registers copied to memory.")
        except:
            print("["+self.name+"] "+"Register file does not exist, creating a new one.")
            self.loadDefaults()
            self.save()
            f = open("/sd/reg"+self.name+".reg","r")
            regRead = f.read()
            f.close()
            print("["+self.name+"] "+"Registers copied to memory.")

        self.regValues = self.format(regRead)

    def loadDefaults(self):
        try:
            for i in range(len(self.regValues)):
                self.regValues.pop(i)
            for i in range(16):
                for j in range(16):
                    self.regValues.append("0x"+str(hex(int(i))[2:]).upper()+str(hex(int(j))[2:]).upper()+":0000000000000000")
        except:
            self.regValues = []
            for i in range(16):
                for j in range(16):
                    self.regValues.append("0x"+str(hex(int(i))[2:]).upper()+str(hex(int(j))[2:]).upper()+":0000000000000000")

    def format(self,regRead):
        import os
        regSettings = []

        for i in range(256):
            regSettings.append(regRead[21*i:(21*i)+21])

        try:
            if len(regRead) == 0:
                raise Exception("["+self.name+"] "+"Configuration length 0.")
            for i in range(len(regSettings)):
                if regSettings[i] == "":
                    raise Exception("["+self.name+"] "+"Incorrectly formatted.")
        except:
            os.remove("/sd/reg"+self.name+".reg")
            raise Exception("["+self.name+"] "+"Register file is empty or incorrectly formatted, please reboot.")

        print("["+self.name+"] "+"Configuration values formatted successfully.")
        return regSettings

    def getValue(self,register,position=None):
        for i in range(len(self.regValues)):
            try:
                if register in self.regValues[i]:
                    value = self.regValues[i][5:21]
                    if position is not None:
                        position = 15-position[0], 16-position[1]
                        if value == None:
                            raise Exception("["+self.name+"] "+"Encountered Nonetype object which is an invalid register value array. Try reformatting.")
                        return value[position[0]:position[1]]
                    else:
                        return value
            except TypeError:
                raise Exception("Encountered 'NoneType' object, register file probably does not exist.")


    def sendValue(self,register,value,position=None):
        import os
        if position is not None:
            oldValue = self.getValue(register,position)
        else:
            oldValue = self.getValue(register,[15,0])
        for i in range(len(self.regValues)):
            if register in self.regValues[i]:
                if position is not None:
                    position = 15-position[0], 16-position[1]
                else:
                    position = 0,16
                pulledValue = self.regValues[i][5:21]
                pulledValue = pulledValue[0:position[0]]+value+pulledValue[position[1]:]
                print("["+self.name+"] "+"Changed register "+str(register)+" value "+"["+str(15-position[0])+":"+str(16-position[1])+"]"+" from "+str(oldValue)+" to "+str(value))
                self.regValues[i] = register+":"+pulledValue

    def save(self):
        import os
        print("["+self.name+"] "+"Saving...")
        f = open("/sd/reg"+self.name+".reg", "w")
        for i in range(len(self.regValues)):
            f.write(self.regValues[i])
        f.close()

    def purge(self):
        import os
        print("["+self.name+"] "+"Purging...")
        os.remove("/sd/reg"+self.name+".reg")
        self.regValues = []

    def debug(self):
        print("["+self.name+"] "+"[TEST] Performing functionality test...")
        if len(self.regValues) == 256:
            for i in range(len(self.regValues)):
                if len(self.regValues[i]) != 21:
                    raise Exception("["+self.name+"] "+"[TEST] Format exception.")
            print("["+self.name+"] "+"[TEST] Formatting is probably OK")
        else:
            raise Exception("["+self.name+"] "+"[TEST] Format exception.")
        self.sendValue("0x00","1111",[3,0])
        if self.getValue("0x00",[3,0]) == "1111":
            print("["+self.name+"] "+"[TEST] RAM R/W OK.")
            self.save()
        else:
            raise Exception("["+self.name+"] "+"[TEST] RAM read/write exception.")
        self.regValues = [0]
        f = open("/sd/reg"+self.name+".reg","r")
        regRead = f.read()
        f.close()
        self.regValues = self.format(regRead)
        if self.getValue("0x00",[3,0]) == "1111":
            print("["+self.name+"] "+"[TEST] Saving OK")
        else:
            raise Exception("["+self.name+"] "+"[TEST] Register file save/update exception")
        self.loadDefaults()
        self.save()
        if self.getValue("0x00",[3,0]) == "0000":
            print("["+self.name+"] "+"[TEST] Default loader OK.")
        else:
            raise Exception("["+self.name+"] "+"[TEST] Default loader exception.")
        print("["+self.name+"] "+"[TEST] Complete")

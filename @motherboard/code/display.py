import board, busio
class Display:
    def __init__(self,i2c,slaveAddress):
        self.slaveAddress = int(slaveAddress)
        print("[Display] Establishing connection with display controller.")
        self.bus = i2c
        print("[Display] Attempting to lock I2C bus...")
        while not self.bus.try_lock():
            pass
        print("[Display] Success!")
        busAddresses = [hex(i) for i in self.bus.scan()]
        print("[Display] Detected adresses:", busAddresses)
        if hex(self.slaveAddress) in busAddresses:
            print("[Display] Display controller detected.")
        else:
            raise Exception("Display controller not detected.")

    def unlockBus(self):
        self.bus.unlock()

    # Display Commands
    def clearBuffer(self):
        self.bus.writeto(int(self.slaveAddress), bytes([int(0x00)]))

    def sendBuffer(self):
        self.bus.writeto(int(self.slaveAddress), bytes([int(0x01)]))

    # Drawing Commands
    def drawPixel(self,x,y):
        c = int(0x10)
        self.bus.writeto(self.slaveAddress, bytearray([c,x,y]))

    def drawLine(self,x1,y1,x2,y2):
        c = int(0x11)
        self.bus.writeto(self.slaveAddress, bytearray([c,x1,y1,x2,y2]))

    def drawRect(self,x,y,w,h):
        c = int(0x12)
        self.bus.writeto(self.slaveAddress, bytearray([c,x,y,w,h]))

    def drawCenterRect(self,x,y,w,h):
        c = int(0x12)
        self.bus.writeto(self.slaveAddress, bytearray([c,x-(w//2),y-(h//2),w,h]))

    def drawHRect(self,x,y,w,h):
        c = int(0x13)
        self.bus.writeto(self.slaveAddress, bytearray([c,x,y,w,h]))

    def drawCenterHRect(self,x,y,w,h):
        c = int(0x13)
        self.bus.writeto(self.slaveAddress, bytearray([c,x-(w//2),y-(h//2),w,h]))

    def drawCircle(self,x,y,r):
        c = int(0x14)
        self.bus.writeto(self.slaveAddress, bytearray([c,x,y,r]))

    def drawHCircle(self,x,y,r):
        c = int(0x15)
        self.bus.writeto(self.slaveAddress, bytearray([c,x,y,r]))

    def drawTriangle(self,x0,y0,x1,y1,x2,y2):
        c = int(0x16)
        self.bus.writeto(self.slaveAddress, bytearray([c,x0,y0,x1,y1,x2,y2]))

    def drawStr(self,x,y,size,string):
        c = int(0x22)
        self.bus.writeto(self.slaveAddress, bytearray([c,size]))
        c = int(0x21)
        if len(string) <= 256:
            pass
        else:
            string = "String exceeds maximum length of 256 characters."
        a = [c,len(string)+1,x,y]+[ord(i) for i in string]+[0]
        self.bus.writeto(self.slaveAddress, bytearray(a))

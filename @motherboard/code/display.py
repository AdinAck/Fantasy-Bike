import board
import busio

class Display:
    def __init__(self,slaveAddress):
        self.slaveAddress = slaveAddress
        print("Establishing connection with display controller.")
        self.bus = busio.I2C(board.SCL, board.SDA)
        print("Attempting to lock I2C bus...")
        while not self.bus.try_lock():
            pass
        print("Success!")
        busAddresses = [hex(i) for i in self.bus.scan()]
        print("Detected adresses:", busAddresses)
        if self.slaveAddress in busAddresses:
            print("Display controller detected.")
        else:
            raise Exception("Display controller not detected.")
        self.bus.unlock()

    def clear(self):
        while not self.bus.try_lock():
            pass
        self.bus.writeto(self.slaveAddress, bytes([int(0x80)])) # command type 1000 0000
        self.bus.unlock()

    def send(self):
        while not self.bus.try_lock():
            pass
        self.bus.writeto(self.slaveAddress, bytes([int(0x81)])) # command type 1000 0001
        self.bus.unlock()

    def drawRect(self,x,y,w,h):
        while not self.bus.try_lock():
            pass
        a = []
        a.append(int(0x43)) # command type 0100 0011
        a.append(x)         # x position
        a.append(y)         # y position
        a.append(w)         # width
        a.append(h)         # height
        self.bus.writeto(int(self.slaveAddress), bytearray(a))
        self.bus.unlock()

    def drawStr(self,x,y,str):
        while not self.bus.try_lock():
            pass
        a = []
        a.append(int(0x44)) # command type 0100 0100
        a.append(x)         # x position
        a.append(y)         # y position
        a.append(str)       # string
        print(bytearray(a))
        self.bus.writeto(int(self.slaveAddress), bytearray(a))
        self.bus.unlock()

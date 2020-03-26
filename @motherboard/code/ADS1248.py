import time
import board
import digitalio
import busio

class ADS1248:
    def __init__(self, freq):
        self.vref = 2.048

        # Initialize SPI
        self.spi = busio.SPI(board.SCK, board.MOSI, board.MISO)
        while not self.spi.try_lock():
            pass
        self.freq = freq
        self.spi.configure(baudrate=self.freq, phase=1, polarity=0)

        # Start pin
        self.start = digitalio.DigitalInOut(board.D33)
        self.start.direction = digitalio.Direction.OUTPUT
        self.start.value = False

        # CS pin
        self.cs = digitalio.DigitalInOut(board.D31)
        self.cs.direction = digitalio.Direction.OUTPUT
        self.cs.value = True

        # Reset pin
        self.reset = digitalio.DigitalInOut(board.D35)
        self.reset.direction = digitalio.Direction.OUTPUT
        # Cycle reset pin to ensure reset
        self.reset.value = True
        time.sleep(0.001)
        self.reset.value = False
        time.sleep(0.001)
        self.reset.value = True
        time.sleep(0.001)

        # DRDY pin
        self.drdy = digitalio.DigitalInOut(board.D37)
        self.drdy.direction = digitalio.Direction.INPUT

    def wakeup(self): # 0x00 0x01
        self.cs.value = False
        time.sleep(1*10**(-8)) # t_CSSC wait time after CS is set to low before communication
        self.spi.write(bytes([0x00]))
        self.cs.value = True

    def sleep(self): # 0x02 0x03
        self.cs.value = False
        time.sleep(1*10**(-8))
        self.spi.write(bytes([0x02]))
        self.cs.value = True

    def rst(self): # 0x06 0x07
        self.cs.value = False
        time.sleep(1*10**(-8))
        self.spi.write(bytes([0x06]))
        self.cs.value = True

    def rreg(self,register,count): # 0x2_
        self.cs.value = False
        time.sleep(1*10**(-8))
        send = [32+register, count-1]
        self.spi.write(bytearray(send))
        recv = bytearray(count)
        self.spi.readinto(recv,write_value=0xFF) # 0xFF is NOP command which tells it to send bytes
        self.cs.value = True
        return [i for i in recv]

    def wreg(self,register,data): # 0x4_
        self.cs.value = False
        time.sleep(1*10**(-8))
        send = [64+register, len(data)-1] + data
        self.spi.write(bytearray(send))
        self.cs.value = True

    def fetch(self,pos,neg):
        self.start.value = True
        self.wreg(0,[pos*8+neg])
        time.sleep(3/self.freq) # t_START is 3 clock cycles
        self.start.value = False
        self.cs.value = False

        while self.drdy.value:
            pass

        recv = bytearray(3)
        self.spi.readinto(recv,write_value=0xFF)
        self.cs.value = True
        result = [i for i in recv]
        result_int = result[0]*2**16+result[1]*2**8+result[2]
        result_bin = str(bin(result_int))[2:]
        if len(result_bin) == 24:
            result_int = int(result_bin[1:], 2)-(2**23)
        return [result_int,
                (self.vref/(2**23))*((result_int))+self.vref]

    def fetchAll(self,ref):
        result = []
        for i in range(8):
            result.append(self.fetch(i,ref))

        return result

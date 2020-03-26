import time
import board
import digitalio
import busio

class ADS1248:
    def __init__(self, freq):
        self.vref = 2.048
        self.result = "None"
        self.fetching = False
        self.increment = 0
        self.last_increment = -1
        self.dump = []

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

    def fetch(self,ref,inputs): # Do NOT run multiple instances of fetch in a single object simultaneously
        start = inputs[0]
        end = inputs[0]
        if len(inputs) == 2:
            end = inputs[1]
        elif len(inputs) > 2:
            raise Exception("[ADS1248] Input range cannot contain more than 2 values.")
            
        if self.last_increment == start-1:
            self.dump = []
            for i in range(end-start+1):
                self.dump.append("No Data")

        if not self.fetching:
            self.start.value = True
            self.wreg(0,[self.increment*8+ref])
            time.sleep(3/self.freq) # t_START is 3 clock cycles
            self.start.value = False
            self.cs.value = False
            self.fetching = True

        if not self.drdy.value:
            recv = bytearray(3)
            self.spi.readinto(recv,write_value=0xFF)
            self.cs.value = True
            result = [i for i in recv]
            result_int = result[0]*2**16+result[1]*2**8+result[2]
            result_bin = str(bin(result_int))[2:]
            if len(result_bin) == 24: # Test if negative
                result_int = int(result_bin[1:], 2)-(2**23)
            self.result = (self.vref/(2**23))*((result_int))+self.vref
            self.increment += 1
            self.fetching = False

        if self.increment > end+1:
            self.increment = start
            self.last_increment = start-1

        if self.increment > self.last_increment:
            self.last_increment = self.increment
            if self.increment > start:
                self.dump[self.increment-start-1] = self.result

        return self.dump

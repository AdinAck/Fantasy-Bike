import time
import board
import digitalio
import busio

class ADS1248:
    list = []

    def init(spi, start_pin, reset_pin):
        # SPI
        ADS1248.spi = spi

        # Start pin
        ADS1248.start = digitalio.DigitalInOut(start_pin)
        ADS1248.start.direction = digitalio.Direction.OUTPUT
        ADS1248.start.value = False

        # Reset pin
        ADS1248.reset = digitalio.DigitalInOut(reset_pin)
        ADS1248.reset.direction = digitalio.Direction.OUTPUT
        # Cycle reset pin to ensure reset
        ADS1248.reset.value = True
        time.sleep(0.001)
        ADS1248.reset.value = False
        time.sleep(0.001)
        ADS1248.reset.value = True
        time.sleep(0.001)

    def fetchAll(ref, inputs):
        voltages = []
        for i in range(len(inputs)):
            ADS1248.start.value = True
            for adc in ADS1248.list:
                adc.wreg(0,[inputs[i]*8+ref])
                adc.cs.value = False
            ADS1248.start.value = False
            for adc in ADS1248.list:
                voltages.append(adc.fetch())

        return voltages

    def __init__(self, cs_pin, drdy_pin):
        self.vref = 2.048
        ADS1248.list.append(self)

        # CS pin
        self.cs = digitalio.DigitalInOut(cs_pin)
        self.cs.direction = digitalio.Direction.OUTPUT
        self.cs.value = True

        # DRDY pin
        self.drdy = digitalio.DigitalInOut(drdy_pin)
        self.drdy.direction = digitalio.Direction.INPUT

    def wakeup(self): # 0x00 0x01
        self.cs.value = False
        time.sleep(1*10**(-8)) # t_CSSC wait time after CS is set to low before communication
        ADS1248.spi.write(bytes([0x00]))
        self.cs.value = True
        print("[ADC1248] [{}] [WAKEUP] Done.".format(ADS1248.list.index(self)))

    def sleep(self): # 0x02 0x03
        self.cs.value = False
        time.sleep(1*10**(-8))
        ADS1248.spi.write(bytes([0x02]))
        self.cs.value = True
        print("[ADC1248] [{}] [SLEEP] Done.".format(ADS1248.list.index(self)))

    def rst(self): # 0x06 0x07
        self.cs.value = False
        time.sleep(1*10**(-8))
        ADS1248.spi.write(bytes([0x06]))
        self.cs.value = True
        print("[ADC1248] [{}] [RESET] Done.".format(ADS1248.list.index(self)))

    def rreg(self,register,count): # 0x2_
        self.cs.value = False
        time.sleep(1*10**(-8))
        send = [32+register, count-1]
        ADS1248.spi.write(bytearray(send))
        recv = bytearray(count)
        ADS1248.spi.readinto(recv,write_value=0xFF) # 0xFF is NOP command which tells it to send bytes
        self.cs.value = True
        print("[ADC1248] [{0}] [RREG] Received {1}.".format(ADS1248.list.index(self),recv))
        return [i for i in recv]

    def wreg(self,register,data): # 0x4_
        self.cs.value = False
        time.sleep(1*10**(-8))
        send = [64+register, len(data)-1] + data
        ADS1248.spi.write(bytearray(send))
        self.cs.value = True
        print("[ADC1248] [{0}] [WREG] Wrote {1} to register {2}.".format(ADS1248.list.index(self),data,register))

    def fetch(self):
        if self.drdy.value:
            print("[ADS1248] [{}] [FETCH] Waiting for ADC...".format(ADS1248.list.index(self)))
        while self.drdy.value:
            pass

        recv = bytearray(3)
        ADS1248.spi.readinto(recv,write_value=0xFF)
        self.cs.value = True
        print("[ADS1248] [{0}] [FETCH] {1} received.".format(ADS1248.list.index(self),recv))
        result = [i for i in recv]
        result_int = result[0]*2**16+result[1]*2**8+result[2]
        result_bin = str(bin(result_int))[2:]
        if len(result_bin) == 24: # Test if negative
            result_int = int(result_bin[1:], 2)-(2**23)
        final = self.vref/(2**23)*result_int+self.vref

        return final

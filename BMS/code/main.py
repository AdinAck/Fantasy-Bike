import board
import digitalio
import busio
import time
from ADS1248 import ADS1248

buz = digitalio.DigitalInOut(board.D13)
buz.direction = digitalio.Direction.OUTPUT

relay = digitalio.DigitalInOut(board.A4)
relay.direction = digitalio.Direction.OUTPUT

spi = busio.SPI(board.SCK, board.MOSI, board.MISO)

ADS1248.setup(spi, board.D7, board.D11)
adc1 = ADS1248(board.D9, board.D10, 2.048)
# adc2 = ADS1248(board.D11, board.D10, 2.5)
# adc3 = ADS1248(board.D9, board.D7, 2.5)

# ADS1248.verbose = True
adc1.wakeup()
adc1.wreg(2,[0x30])

print(adc1.rreg(0,16))
print(adc1.fetch(0,[1,2,3,4,5,6,7]))

# while True:
#     # print(ADS1248.fetchAll(3,[0,1,2,4,5,6,7]))

import board
import digitalio
import busio
import time
from ADS1248 import ADS1248
from BMS import BMS



buz = digitalio.DigitalInOut(board.D13)
buz.direction = digitalio.Direction.OUTPUT

relay = digitalio.DigitalInOut(board.A4)
relay.direction = digitalio.Direction.OUTPUT

spi = busio.SPI(board.SCK, board.MOSI, board.MISO)

ADS1248.setup(spi, board.D3, board.D4)
adc1 = ADS1248(board.D2, board.D12, 2.5)
adc2 = ADS1248(board.D11, board.D10, 2.5)
adc3 = ADS1248(board.D9, board.D7, 2.5)

# ADS1248.verbose = True
ADS1248.wakeupAll()
ADS1248.wregAll(2,[0x40,0x01])
# ADS1248.selfOffsetAll()

bms = BMS(ADS1248, buz, relay)

while True:
    bms.battCheck()
    time.sleep(3)

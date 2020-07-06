import board
import digitalio
import busio
import time
from adafruit_mcp230xx.mcp23008 import MCP23008
from ADS1248 import ADS1248
from BMS import BMS

# GPIO
buz = digitalio.DigitalInOut(board.D13)
buz.direction = digitalio.Direction.OUTPUT

relay = digitalio.DigitalInOut(board.A4)
relay.direction = digitalio.Direction.OUTPUT

# SERCOM
spi = busio.SPI(board.SCK, board.MOSI, board.MISO)
i2c = busio.I2C(board.SCL, board.SDA)

# ADS1248
ADS1248.setup(spi, board.D3, board.D4)
adc0 = ADS1248(board.D2, board.D12, 2.5)
adc1 = ADS1248(board.D11, board.D10, 2.5)
adc2 = ADS1248(board.D9, board.D7, 2.5)

# ADS1248.verbose = True
ADS1248.wakeupAll()
ADS1248.wregAll(2,[0x40,0x01])
# ADS1248.selfOffsetAll()

# MCP23008
mcp0 = MCP23008(i2c, address=0x20)
mcp1 = MCP23008(i2c, address=0x21)
mcp2 = MCP23008(i2c, address=0x22)

# BMS
bms = BMS(ADS1248, [mcp0, mcp1, mcp2], buz, relay)
bms.verbose = True

while True:
    bms.update()
    time.sleep(3)

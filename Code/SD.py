import board
import adafruit_sdcard
import sys
import digitalio
import busio
import storage

# Initialize SD card
print("Setting up communication with SDCard...")
spi = busio.SPI(board.SD_SCK, board.SD_MOSI, board.SD_MISO)
cs = digitalio.DigitalInOut(board.SD_CS)
sdcard = adafruit_sdcard.SDCard(spi, cs)

print("Mounting...")
vfs = storage.VfsFat(sdcard)
storage.mount(vfs, "/sd")
sys.path.append("/sd")

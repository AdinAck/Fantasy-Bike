import board
import adafruit_sdcard
import sys
import digitalio
import busio
import storage

# Initialize SD card
print("Setting up communication with SDCard...")
sd_spi = busio.SPI(board.SD_SCK, board.SD_MOSI, board.SD_MISO)
sd_cs = digitalio.DigitalInOut(board.SD_CS)
sdcard = adafruit_sdcard.SDCard(sd_spi, sd_cs)

print("Mounting...")
vfs = storage.VfsFat(sdcard)
storage.mount(vfs, "/sd")
sys.path.append("/sd")

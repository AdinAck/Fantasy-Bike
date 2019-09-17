import board
import adafruit_sdcard
import sys
import digitalio
import busio
import storage
# Initialize SD card
try:
    spi = busio.SPI(board.SD_SCK, board.SD_MOSI, board.SD_MISO)
    cs = digitalio.DigitalInOut(board.SD_CS)
    sdcard = adafruit_sdcard.SDCard(spi, cs)
    vfs = storage.VfsFat(sdcard)
    storage.mount(vfs, "/sd")
    sys.path.append("/sd")
except (OSError, ValueError, AttributeError) as sderr:
    print("SD Card exception -- "+str(sderr)+".")
except:
    print("SD Card exception:")
    print("SD Card error occured.")

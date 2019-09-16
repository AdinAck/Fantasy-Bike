# Volatile variable definitions
errCount = 0

# imports and initialization stuff
try:
    import board
    import digitalio
    import busio
    import storage
    import adafruit_sdcard
    import microcontroller
    import os
    import sys
    import math
    import time
except (ImportError, OSError, ValueError, AttributeError) as importerr:
    errCount += 1
    print("     ["+str(errCount)+"] Module import error: "+str(importerr)+".")
except:
    errCount += 1
    print("Module import exception:")
    print("     ["+str(errCount)+"] Module import error occured.")



# Initialize SD card
try:
    spi = busio.SPI(board.SD_SCK, board.SD_MOSI, board.SD_MISO)
    cs = digitalio.DigitalInOut(board.SD_CS)
    sdcard = adafruit_sdcard.SDCard(spi, cs)
    vfs = storage.VfsFat(sdcard)
    storage.mount(vfs, "/sd")
    sys.path.append("/sd")
except (OSError, ValueError, AttributeError) as sderr:
    errCount += 1
    print("     ["+str(errCount)+"] SD Card exception -- "+str(sderr)+".")
except:
    errCount += 1
    print("SD Card exception:")
    print("     ["+str(errCount)+"] SD Card error occured.")

    print("CPU Temp: "+str(microcontroller.cpu.temperature))

# Using the configuration file:
import config

configValues = config.init()
config.sendValue("0xAA",[12,16],"1111",configValues)
print(config.getValue("0xAA",[12,16],configValues))
config.save(configValues)

# I/O Setup
led = digitalio.DigitalInOut(board.D13)
led.direction = digitalio.Direction.OUTPUT

interrupt = digitalio.DigitalInOut(board.D3)
interrupt.direction = digitalio.Direction.INPUT
interrupt.pull = digitalio.Pull.UP

# loop
while True:
    if interrupt.value == False:
        break
    led.value = False
    time.sleep(1)
    led.value = True
    time.sleep(1)

print("LED deactivated.")

print("")
print(str(errCount)+" exception(s).")
print("")

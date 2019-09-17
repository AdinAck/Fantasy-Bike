# imports and initialization stuff
try:
    import board
    import digitalio
    import busio
    import storage
    import SD
    import microcontroller
    import os
    import sys
    import math
    import time
except (ImportError, OSError, ValueError, AttributeError) as importerr:
    print("Module import error: "+str(importerr)+".")
except:
    print("Module import exception:")
    print("Module import error occured.")

print("CPU Temp: "+str(microcontroller.cpu.temperature))

# Using the configuration file:
import config

# configValues = config.init()
# config.sendValue("0xAA",[3,0],"1111",configValues)
# print(config.getValue("0xAA",[3,0],configValues))
# config.save(configValues)

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

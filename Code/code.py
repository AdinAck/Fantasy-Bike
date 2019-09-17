# imports and initialization stuff
import board
import digitalio
import busio
import storage
import sd
import microcontroller
import os
import sys
import math
import time

print("CPU Temp: "+str(microcontroller.cpu.temperature))

# Using the configuration file:
import config

# Test config register system is working:
print("▼▼▼[CONFIG REGISTER SYSTEM CHECK]▼▼▼")
configValues = config.init()
if config.getValue("0x00",[3,0],configValues) != "1111":
    print("Register 0x00 [3:0] watchdog unconfigured, sending...")
    config.sendValue("0x00",[3,0],"1111",configValues)
if config.getValue("0x00",[3,0],configValues) == "1111":
    print("Success!")
    config.save(configValues)
    print("▲▲▲[CONFIG REGISTER SYSTEM CHECK]▲▲▲")
else:
    raise Exception("Config value system is non operational.")

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

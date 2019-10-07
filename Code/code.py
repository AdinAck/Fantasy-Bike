# imports and initialization stuff
import board
import digitalio
import busio
import displayio
import adafruit_ssd1322
import adafruit_gfx as gfx
import storage
import sd
import microcontroller
import os
import sys
import math
import time

# Display setup



time.sleep(1)

print("CPU Temp: "+str(microcontroller.cpu.temperature))

# Using the configuration file:
import RegX
from RegX import *

# Test config register system is working: WILL DELETE STORED REGISTER VALUES
# cfg = RegX()
# cfg.debug()
# cfg2 = RegX("test2")
# cfg2.test()
# cfg2.purge()

# I/O Setup
led = digitalio.DigitalInOut(board.D13)
led.direction = digitalio.Direction.OUTPUT

interrupt = digitalio.DigitalInOut(board.D3)
interrupt.direction = digitalio.Direction.INPUT
interrupt.pull = digitalio.Pull.UP

# loop
while True:
    if interrupt.value == True:
        break
    time.sleep(1)
    led.value = True
    time.sleep(1)
    led.value = False

print("\nLED deactivated.")

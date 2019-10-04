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

displayio.release_displays()

# This pinout works on a Metro and may need to be altered for other boards.
spi = busio.SPI(board.SCL, board.SDA)
tft_cs = board.D6
tft_dc = board.D9
tft_reset = board.D5

display_bus = displayio.FourWire(spi, command=tft_dc, chip_select=tft_cs, reset=tft_reset,
                                 baudrate=1000000)
time.sleep(1)
d = adafruit_ssd1322.SSD1322(display_bus, width=256, height=66, colstart=28)
# g = displayio.Group()
# b = displayio.Bitmap(10,10,16)
# p = displayio.Palette(16)
# t = displayio.TileGrid(b,pixel_shader=p)
# g.append(t)
# print(g)
# print(b)
# print(p)
# print(t)

print("CPU Temp: "+str(microcontroller.cpu.temperature))

# Using the configuration file:
import RegX
from RegX import *

# Test config register system is working: WILL DELETE STORED REGISTER VALUES
cfg = RegX()
cfg2 = RegX("test2")
cfg.test()
cfg2.test()
cfg2.purge()

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

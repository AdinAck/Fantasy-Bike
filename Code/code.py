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
import config
from config import *

# Test config register system is working: WILL DELETE STORED REGISTER VALUES
configRegisterTest = True
if configRegisterTest == True:
    print("▼▼▼[CONFIG REGISTER SYSTEM CHECK]▼▼▼")
    cfg = Config()
    if cfg.getValue("0x00",[3,0]) != "1111":
        print("Performing register value persistence check...")
        cfg.sendValue("0x00","1111",[3,0])
    else:
        raise Exception("Register values were not reset or were overwritten.")
    cfg.save()
    cfg.sendValue("0x00","0000",[3,0])
    if cfg.getValue("0x00",[3,0]) == "0000":
        print("Success!")
        cfg.save()
        print("▲▲▲[CONFIG REGISTER SYSTEM CHECK]▲▲▲")
    else:
        raise Exception("Config value system is not operational.")

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

# imports and initialization stuff
import board
import digitalio
import busio
# import sd
import microcontroller
import os
import sys
import math
import time
from display import Display
import animation
from animation import Animation
from supertime import*
import rotaryio
import ui

# SerCom Setup
i2c = busio.I2C(board.SCL, board.SDA)
spi = busio.SPI(board.SCK, board.MOSI, board.MISO)

# Class inits
s = SuperTime()
l = SuperTime()
d = Display(i2c, "0x8")
a = Animation(d)

# General setup
print("CPU Temp: "+str(microcontroller.cpu.temperature))
print("CPU Frequency: "+str(microcontroller.cpu.frequency))
# Using the configuration file:
# from RegX import *

# Test config register system is working: WILL DELETE STORED REGISTER VALUES
# cfg = RegX()
# cfg.debug()
# cfg2 = RegX("test2")
# cfg2.test()
# cfg2.purge()

# I/O Setup
led = digitalio.DigitalInOut(board.D13)
led.direction = digitalio.Direction.OUTPUT

# Variables for Main Loop
tick = 0
loopTime = 1
animTime = 2
start = (200,20)
end = (200, 64-9)
c = 0

def func():
    ui.Screen.current = screen2

def func2():
    ui.Screen.current = screen

# Set up UI
ui.Screen.setEncoder(rotaryio.IncrementalEncoder(board.D33, board.D35), digitalio.DigitalInOut(board.D31))
ui.Screen.setDisplay(d)

screen = ui.Screen(True)
button = ui.Button(screen, 38,32,38,16,11,"Test", func)
framerate = ui.Text(screen, 0,14,14,int(1/loopTime))
num1 = ui.SingleDigitNumberSelector(screen, 116-24,32, True)
num2 = ui.SingleDigitNumberSelector(screen, 116,32, True)
num3 = ui.SingleDigitNumberSelector(screen, 140,32, True)
num4 = ui.SingleDigitNumberSelector(screen, 140+24,32, True)

screen2 = ui.Screen()
back = ui.Button(screen2, 128, 32, 38, 16, 11, "Back", func2)

# Main Loop
while True:
    d.clearBuffer() # Clear display buffer.
    # d.setFont(11)
    framerate.text = int(1/loopTime)
    ui.update()
    d.sendBuffer() # Send all display elements to display to be drawn.
    loopTime = s.getTime() # Gets duration of loop (to compare with desired).

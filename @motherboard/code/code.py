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
import pong

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
    ui.Screen.current = pong

def func2():
    ui.Screen.current = screen

# Set up UI
ui.Screen.setEncoder(rotaryio.IncrementalEncoder(board.D33, board.D35), digitalio.DigitalInOut(board.D31))
ui.Screen.setDisplay(d)

screen = ui.Screen(True)
button = ui.Button(screen, 38,32,38,16,11,"Pong", func)
framerate = ui.Text(screen, 0,8,8,int(1/loopTime))
num1 = ui.SingleDigitNumberSelector(screen, 116-24,32)
num2 = ui.SingleDigitNumberSelector(screen, 116,32)
num3 = ui.SingleDigitNumberSelector(screen, 140,32)
num4 = ui.SingleDigitNumberSelector(screen, 140+24,32)

pong = ui.Screen()
back = ui.Button(pong, 128, 32, 38, 16, 11, "Back", func2)

p = pong.Pong(d)

# Main Loop
while True:
    d.clearBuffer() # Clear display buffer.
    # d.setFont(11)
    framerate.text = int(1/loopTime)
    ui.update()
    if ui.Screen.current == pong:
        p.draw()
    d.sendBuffer() # Send all display elements to display to be drawn.
    loopTime = s.getTime() # Gets duration of loop (to compare with desired).

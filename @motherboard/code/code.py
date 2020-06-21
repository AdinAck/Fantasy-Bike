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

# Set up UI
ui.Screen.setEncoder(rotaryio.IncrementalEncoder(board.D33, board.D35))
ui.Screen.setDisplay(d)

test = ui.Screen()
test.addButton(0,32-8,32,16,"Test",11)

ui.Screen.current = test

# Main Loop
while True:
    d.clearBuffer() # Clear display buffer.
    # d.setFont(11)
    d.drawStr(0,11,str(int(1/loopTime)))
    # d.drawStr(0,11,str(int(microcontroller.cpu.temperature)))
    test.addLiveText(32,11,11,str(ui.Screen.cursorPosition))
    ui.update()
    d.sendBuffer() # Send all display elements to display to be drawn.
    loopTime = s.getTime() # Gets duration of loop (to compare with desired).

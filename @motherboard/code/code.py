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
import pong as game

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
    ui.Screen.current = pmenu

def pResume():
    ui.Screen.current = pong

def pRestart():
    game.Pong.reset()
    pResume()

def pExit():
    ui.Screen.current = screen

# Set up UI
encoder = rotaryio.IncrementalEncoder(board.D33, board.D35)
button = digitalio.DigitalInOut(board.D31)
ui.Screen.setEncoder(encoder, button)
ui.Screen.setDisplay(d)

screen = ui.Screen(True)
button = ui.Button(screen, 38,32,38,16,11,"Pong", func)
framerate = ui.Text(screen, 0,8,8,int(1/loopTime))
num1 = ui.SingleDigitNumberSelector(screen, 116-24,32)
num2 = ui.SingleDigitNumberSelector(screen, 116,32)
num3 = ui.SingleDigitNumberSelector(screen, 140,32)
num4 = ui.SingleDigitNumberSelector(screen, 140+24,32)

pong = ui.Screen()
# back = ui.Button(pong, 128, 32, 38, 16, 11, "Back", func2)

p = game.Pong(d, encoder)
pPress = False

pmenu = ui.Screen()
resume = ui.Button(pmenu, 48, 32, 68, 16, 11, "Resume", pResume)
restart = ui.Button(pmenu, 128, 32, 68, 16, 11, "Restart", pRestart)
exit = ui.Button(pmenu, 256-48, 32, 68, 16, 11, "Exit", pExit)

# Main Loop
while True:
    d.clearBuffer() # Clear display buffer.
    # d.setFont(11)
    framerate.text = int(1/loopTime)
    ui.update()
    if ui.Screen.current == pong:
        p.update()
        if ui.Screen.button.value == 0:
            pPress = True
        elif pPress == True:
            ui.Screen.current = pmenu
            ui.Screen.current.selecting = True
            pPress = False
    d.sendBuffer() # Send all display elements to display to be drawn.
    loopTime = s.getTime() # Gets duration of loop (to compare with desired).

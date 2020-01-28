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
from display import Display
from supertime import*

s = SuperTime()
d = Display("0x8")

# d.drawStr(128,32,"Test")

# Display

d.drawRect(0,0,255,63)
d.sendBuffer()
time.sleep(2)

def bezier(i, start, start_infl, end, end_infl, frames):
    x00 = 0
    y00 = start[0]
    x01 = frames*start_infl
    y01 = y00
    x03 = frames
    y03 = end[0]
    x02 = frames*(1-end_infl)
    y02 = y03
    x10 = 0
    y10 = start[1]
    x11 = frames*start_infl
    y11 = y10
    x13 = frames
    y13 = end[1]
    x12 = frames*(1-end_infl)
    y12 = y13
    t = i/frames
    return [(1-t)*((1-t)*((1-t)*y00+t*y01)+t*((1-t)*y01+t*y02))+t*((1-t)*((1-t)*y01+t*y02)+t*((1-t)*y02+t*y03)),
            (1-t)*((1-t)*((1-t)*y10+t*y11)+t*((1-t)*y11+t*y12))+t*((1-t)*((1-t)*y11+t*y12)+t*((1-t)*y12+t*y13))]

# Test Square Animation
def testSquare(i, framerate, frames, start, start_infl, end, end_infl):
    if i <= frames:
        position = bezier(i, start, start_infl, end, end_infl, frames)
        while s.check(1/framerate):
            pass
        d.drawRect(int(position[0]),int(position[1]),20,20)

# Variables for Main Loop
tick = 0
framerate = 60
testSquareFrames = 80

# Main Loop
while True:
    d.clearBuffer()
    # d.drawStr(0,11,"AAAA")
    d.drawHRect(1,1,10,10)
    d.drawLine(0,64,255,0)
    if tick <= testSquareFrames:
        testSquare(tick,framerate,testSquareFrames,(0,0),.75,(256-20,64-20),.75)
    if tick > testSquareFrames and tick <= testSquareFrames*2:
        testSquare(tick-testSquareFrames,framerate,testSquareFrames,(256-20,64-20),.75,(0,0),.75)
    d.sendBuffer()
    if tick == testSquareFrames*2:
        tick = 0
    tick += 1



time.sleep(2)

print("CPU Temp: "+str(microcontroller.cpu.temperature))
print("CPU Frequency: "+str(microcontroller.cpu.frequency))

# Using the configuration file:
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

# interrupt = digitalio.DigitalInOut(board.D3)
# interrupt.direction = digitalio.Direction.INPUT
# interrupt.pull = digitalio.Pull.UP

# loop
# while True:
#     if interrupt.value == True:
#         break
#     time.sleep(1)
#     led.value = True
#     time.sleep(1)
#     led.value = False
#
# print("\nLED deactivated.")

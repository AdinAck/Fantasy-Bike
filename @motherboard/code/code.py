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
import animation
from supertime import*

s = SuperTime()
d = Display("0x8")

# d.drawStr(128,32,"Test")

# Display

# Test Square Animation
def testSquare(i, frames, c, type, start, end, width):
    if i <= frames:
        position = animation.curve(i, frames, type, start, end, c)
        d.drawRect(position[0],position[1],width,width)

# Test Line Animation
def testLine(i, frames, c1, c2, type, start1, end1, start2, end2):
    if i <= frames:
        position1 = animation.curve(i, frames, type, start1, end1, c1)
        position2 = animation.curve(i, frames, type, start2, end2, c2)
        d.drawLine(position1[0],position1[1],position2[0],position2[1])

# Variables for Main Loop
tick = 0
framerate = 30
frames = 15
start = (200,20)
end = (200, 64-9)
c = 0

# Main Loop
while True:
    d.clearBuffer()
    d.drawStr(0,11,"a")
    d.drawHRect(128-4,32-4,9,9)
    d.drawHCircle(128,32,16)
    d.drawPixel(128,32)
    if tick <= frames:
        testSquare(tick,frames,c,"easeIn",start,end,9)
        testLine(tick,frames,4,4,"ease",(128-20,56),(128-20,56),(128-20,56),(128+20,56))
        testLine(tick,frames,4,4,"ease",(84,64/4),(44,64/4),(44,48),(84,48))
    if tick > frames and tick <= frames*2:
        testSquare(tick-frames,frames,c,"easeOut",end,start,9)
        testLine(tick-frames,frames,4,4,"ease",(128-20,56),(128-20,56),(128+20,56),(128-20,56))
        testLine(tick-frames,frames,4,4,"ease",(44,64/4),(84,64/4),(84,48),(44,48))
    d.sendBuffer()
    if tick == frames*2:
        tick = 0
    tick += 1
    while s.check(1/framerate):
        pass



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

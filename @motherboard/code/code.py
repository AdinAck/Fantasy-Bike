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
from animation import Animation
from supertime import*

# Class inits
s = SuperTime()
p = SuperTime()
d = Display("0x8")
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

button = digitalio.DigitalInOut(board.D53)
button.direction = digitalio.Direction.INPUT
button.pull = digitalio.Pull.UP



# Test Line Animation
def testLine(i, frames, c1, c2, type, start1, end1, start2, end2):
    if i <= frames:
        position1 = a.keyframeGen(i, frames, type, start1, end1, c1)
        position2 = a.keyframeGen(i, frames, type, start2, end2, c2)
        d.drawLine(position1[0],position1[1],position2[0],position2[1])

# Variables for Main Loop
tick = 0
desiredFramerate = 60
framerate = desiredFramerate
animTime = .5
loopTime = 1/framerate
skipFrame = False
frames = int(animTime*framerate)
start = (200,20)
end = (200, 64-9)
c = 0

# Main Loop
while True:
    d.clearBuffer()
    led.value = False
    if skipFrame == True:
        framerate = int(1/loopTime)
        frames = int(animTime*framerate)
        led.value = True
    elif framerate < desiredFramerate:
        framerate += 1
        frames = int(animTime*framerate)
    d.drawStr(0,11,"a")
    d.drawHRect(128-4,32-4,9,9)
    d.drawHCircle(128,32,16)
    d.drawPixel(128,32)
    # if tick <= frames:
    #     testLine(tick,frames,4,4,"ease",(128-20,56),(128-20,56),(128-20,56),(128+20,56))
    #     testLine(tick,frames,4,4,"ease",(84,64/4),(44,64/4),(44,48),(84,48))
    # if tick > frames and tick <= frames*2:
    #     testLine(tick-frames,frames,4,4,"ease",(128-20,56),(128-20,56),(128+20,56),(128-20,56))
    #     testLine(tick-frames,frames,4,4,"ease",(44,64/4),(84,64/4),(84,48),(44,48))
    tick += 1
    if len(a.animQueue) == 0:
        tick = 0
    if button.value == False:
        a.animQueue.append(["testSquare",tick,frames,c,start,end,"easeIn",9])
        a.animQueue.append(["testLine",tick,int(framerate),1,(84,16),(44,16),(44,48),(84,48),"ease"])
    a.drawFrame(tick)
    d.sendBuffer()
    loopTime = p.getTime()
    skipFrame = True
    while s.check(1/framerate):
        skipFrame = False

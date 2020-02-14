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

button1 = digitalio.DigitalInOut(board.D53)
button1.direction = digitalio.Direction.INPUT
button1.pull = digitalio.Pull.UP

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
    d.clearBuffer() # Clear display buffer.
    led.value = False
    if skipFrame == True:
        framerate = int(1/loopTime) # Sets framerate to minimum possible framerate with current performance.
        frames = int(animTime*framerate) # Adjusts length of animation to accomodate framerate change.
        led.value = True
    elif framerate < desiredFramerate:
        framerate += 1 # Slowly return framerate to normal once performance allows.
        frames = int(animTime*framerate) # Readjusts length of animation.
    d.drawStr(0,11,"a")
    d.drawHRect(128-4,32-4,9,9)
    d.drawHCircle(128,32,16)
    d.drawPixel(128,32)
    tick += 1 # Increase tick by 1 every loop.
    if len(a.animQueue) == 0: # If no animations are running, no need to count ticks!
        tick = 0
    if button1.value == False:
        a.animQueue.append(["testSquare",tick,frames,c,start,end,"easeIn",9])
        a.animQueue.append(["testLine",tick,int(framerate),1,(84,16),(44,16),(44,48),(84,48),"ease"])
        # ^ Adds animations to animation queue.

    a.drawFrame(tick) # Adds all animations at frame "tick" to display buffer.
    d.sendBuffer() # Send all display elements to display to be drawn.
    loopTime = p.getTime() # Gets duration of loop (to compare with desired).
    skipFrame = True
    while s.check(1/framerate): # Will loop until time for 1 frame has passed
        skipFrame = False # If this loop is able to run, that means the main loop finished before the required time,
                          # thus, no frames were lost.

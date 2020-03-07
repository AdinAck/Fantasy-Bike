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
l = SuperTime()
d = Display("0x8")
a = Animation(d)

# Load keyframe lookup tables
testSquareKey = a.loadKeyframes("Test keyframes X.txt", "Test keyframes Y.txt")
Cv1 = a.loadKeyframes("/the cube/Vertex 1 X.txt", "/the cube/Vertex 1 Y.txt")
Cv2 = a.loadKeyframes("/the cube/Vertex 2 X.txt", "/the cube/Vertex 2 Y.txt")
Cv3 = a.loadKeyframes("/the cube/Vertex 3 X.txt", "/the cube/Vertex 3 Y.txt")
Cv4 = a.loadKeyframes("/the cube/Vertex 4 X.txt", "/the cube/Vertex 4 Y.txt")
Cv5 = a.loadKeyframes("/the cube/Vertex 5 X.txt", "/the cube/Vertex 5 Y.txt")
Cv6 = a.loadKeyframes("/the cube/Vertex 6 X.txt", "/the cube/Vertex 6 Y.txt")
Cv7 = a.loadKeyframes("/the cube/Vertex 7 X.txt", "/the cube/Vertex 7 Y.txt")
Cv8 = a.loadKeyframes("/the cube/Vertex 8 X.txt", "/the cube/Vertex 8 Y.txt")
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
loopTime = 1
animTime = 2
start = (200,20)
end = (200, 64-9)
c = 0

# Main Loop
while True:
    d.clearBuffer() # Clear display buffer.
    d.drawStr(0,11,str(int(1/loopTime))+" "+str(int(tick*60)))
    # d.drawHCircle(128,32,16)
    # d.drawHRect(128-4,32-4,9,9)
    # d.drawPixel(128,32)
    tick = l.end()
    if len(a.animQueue) == 0: # If no animations are running, no need to count ticks!
        tick = 0
        l.start()
    if button1.value == False and a.testSquareRun == False:
        a.animQueue.append(["testSquare",tick,testSquareKey,9])
        a.animQueue.append(["testLine",tick,Cv1,Cv2])
        a.animQueue.append(["testLine",tick,Cv1,Cv3])
        a.animQueue.append(["testLine",tick,Cv1,Cv6])
        a.animQueue.append(["testLine",tick,Cv2,Cv5])
        a.animQueue.append(["testLine",tick,Cv2,Cv4])
        a.animQueue.append(["testLine",tick,Cv3,Cv4])
        a.animQueue.append(["testLine",tick,Cv3,Cv7])
        a.animQueue.append(["testLine",tick,Cv4,Cv8])
        a.animQueue.append(["testLine",tick,Cv5,Cv6])
        a.animQueue.append(["testLine",tick,Cv5,Cv8])
        a.animQueue.append(["testLine",tick,Cv6,Cv7])
        a.animQueue.append(["testLine",tick,Cv7,Cv8])
        # ^ Adds animations to animation queue.

    a.drawFrame(tick) # Adds all animations at frame "tick" to display buffer.
    d.sendBuffer() # Send all display elements to display to be drawn.
    loopTime = p.getTime() # Gets duration of loop (to compare with desired).

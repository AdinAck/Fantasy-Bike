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
import display
from display import*
import supertime
from supertime import*

d = Display()
s = SuperTime()

# Display

# framerate = 30
# frames = 30
# start = -50,0
# start_infl = .75
# end = 50,0
# end_infl = .75
# distance = math.sqrt(((end[0]-start[0])**2)+((end[1]-start[1])**2))
# for i in range(frames):
#     # d.frame()
#     x0 = 0
#     y0 = start[0]
#     x1 = frames*start_infl
#     y1 = y0
#     x3 = frames
#     y3 = end[0]
#     x2 = frames*(1-end_infl)
#     y2 = y3
#     t = i/frames
#     position = (1-t)*((1-t)*((1-t)*y0+t*y1)+t*((1-t)*y1+t*y2))+t*((1-t)*((1-t)*y1+t*y2)+t*((1-t)*y2+t*y3))
#     # d.drawRect(position,0,3,3,1,True)
#     d.clear()
#     d.drawRect(position,0,32,32,1,True)
#     # for i in range(10):
#     #     d.drawPixel(position,10+i,1)
#     while s.check(1/framerate):
#         pass

time.sleep(2)

print("CPU Temp: "+str(microcontroller.cpu.temperature))
print("CPU Frequency: "+str(microcontroller.cpu.frequency))

# Using the configuration file:
import RegX
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

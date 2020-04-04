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
from ADS1248 import ADS1248

# Class inits
s = SuperTime()
l = SuperTime()
d = Display("0x8")
a = Animation(d)

# Load keyframe lookup tables
testSquareKey = a.loadKeyframes("Test keyframes X.txt", "Test keyframes Y.txt")

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

button1 = digitalio.DigitalInOut(board.D22)
button1.direction = digitalio.Direction.INPUT
button1.pull = digitalio.Pull.UP

# Initialize SPI
spi = busio.SPI(board.SCK, board.MOSI, board.MISO)
while not spi.try_lock():
    pass
spi.configure(baudrate=2000000, phase=1, polarity=0)

# ADS1248
adc = ADS1248(board.D31, board.D37) # Define ADC objects first
ADS1248.configure(spi, board.D33, board.D35) # Initialize ADC group

# Send commands to individual ADC
adc.wakeup()
adc.wreg(2,[0x30,0x00]) # Write register 2 with 0x30 (configure vref) and register 3 with 0x00 (conversion rate)
adc.rreg(0,16) # Read all registers

# Read inputs A0 and A2 in relation to A0 and convert to voltage from all ADC objects
print([2.048/(2**23)*i+2.048 for i in ADS1248.fetchAll(0,[0,2])])



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
    tick = l.end()
    if len(a.animQueue) == 0: # If no animations are running, no need to count ticks!
        tick = 0
        l.start()
    if button1.value == False and a.testSquareRun == False:
        a.animQueue.append(["testSquare",tick,testSquareKey,9])
        # ^ Adds animations to animation queue.

    a.drawFrame(tick) # Adds all animations at frame "tick" to display buffer.
    d.sendBuffer() # Send all display elements to display to be drawn.
    loopTime = s.getTime() # Gets duration of loop (to compare with desired).

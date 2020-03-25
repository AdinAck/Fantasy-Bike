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

# ADS1248
class ADS1248:
    def __init__(self, freq):
        # Initialize SPI
        self.spi = busio.SPI(board.SCK, board.MOSI, board.MISO)
        while not self.spi.try_lock():
            pass
        self.freq = freq
        self.spi.configure(baudrate=self.freq, phase=1, polarity=0)

        # Start pin
        self.start = digitalio.DigitalInOut(board.D33)
        self.start.direction = digitalio.Direction.OUTPUT
        self.start.value = False

        # CS pin
        self.cs = digitalio.DigitalInOut(board.D31)
        self.cs.direction = digitalio.Direction.OUTPUT
        self.cs.value = True

        # Reset pin
        self.reset = digitalio.DigitalInOut(board.D35)
        self.reset.direction = digitalio.Direction.OUTPUT
        # Cycle reset pin to ensure reset
        self.reset.value = True
        time.sleep(0.001)
        self.reset.value = False
        time.sleep(0.001)
        self.reset.value = True
        time.sleep(0.001)

    def wakeup(self):
        self.cs.value = False
        time.sleep(1*10**(-8)) # tCSSC wait time after CS is set to low before operation
        self.spi.write(bytes([0x00]))
        self.cs.value = True

    def rreg(self,register,count):
        self.cs.value = False
        time.sleep(1*10**(-8))
        send = [32+register, count-1]
        self.spi.write(bytearray(send))
        recv = bytearray(count)
        self.spi.readinto(recv,write_value=0xFF) # 0xFF is NOP command which makes it send bytes
        self.cs.value = True
        return [i for i in recv]

    def wreg(self,register,data):
        self.cs.value = False
        time.sleep(1*10**(-8))
        send = [64+register, len(data)-1] + data
        self.spi.write(bytearray(send))
        self.cs.value = True


adc = ADS1248(1000000)
adc.wakeup()
adc.wreg(2,[0x20])
print(adc.rreg(0,16))



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
        # ^ Adds animations to animation queue.

    a.drawFrame(tick) # Adds all animations at frame "tick" to display buffer.
    d.sendBuffer() # Send all display elements to display to be drawn.
    loopTime = s.getTime() # Gets duration of loop (to compare with desired).

import board
import digitalio
import busio
import storage
import microcontroller
import os
import sys
import math
import time
import displayio
import adafruit_ssd1322
import adafruit_gfx as gfx

displayio.release_displays()

# Initialize screen
d_spi = busio.SPI(board.SCL, board.SDA)
d_cd = board.D6
d_dc = board.D9
d_rst = board.D5

d_bus = displayio.FourWire(d_spi, command=d_dc, chip_select=d_cd,
                                 reset=d_rst, baudrate=921600)

display = adafruit_ssd1322.SSD1322(d_bus, width=256, height=66, colstart=28)

class Display:
    def __init__(self):
        # Create matrix for controlling pixels of screen
        self.frameCurrent = [[]]
        self.framePrevious = [[]]
        self.bitmap = displayio.Bitmap(display.width, display.height, 2)
        palette = displayio.Palette(2)
        palette[0] = 0x000000
        palette[1] = 0xffffff
        tile_grid = displayio.TileGrid(self.bitmap, pixel_shader=palette)
        group = displayio.Group()
        group.append(tile_grid)
        display.show(group)

    # Draw single pixel on screen at coord (x,y) w/ color (0 or 1)
    def drawPixel(self,x,y,color):
        self.bitmap[int(x),int(y)] = color
        self.frameCurrent[0].append((int(x),int(y)))
        # print("Loaded "+str(int(x))+","+str(int(y)))

    def clear(self):
        # # print("")
        # # print("[clear] Previous: "+str(self.framePrevious[0]))
        # # print("[clear] Current: "+str(self.frameCurrent[0]))
        # remove = []
        # if self.framePrevious[0] != self.frameCurrent[0] and len(self.framePrevious[0]) != 0:
        #     remove = list(self.frameCurrent[0][:(len(self.frameCurrent[0])-len(self.framePrevious[0]))])
        #     # print("Removing: "+str(remove)+" in range [0:"+str(len(self.frameCurrent[0])-len(self.framePrevious[0]))+"]")
        #     for i in range(len(remove)):
        #         self.bitmap[remove[i][0],remove[i][1]] = 0
        #         # print("Removed: "+str(remove[i]))
        #
        #     self.frameCurrent[0] = list(self.frameCurrent[0][len(remove):])
        # # print("")
        for i in range(len(self.frameCurrent[0])):
            self.bitmap[int(self.frameCurrent[0][i][0]),int(self.frameCurrent[0][i][1])] = 0
        self.frameCurrent[0] = []

    def drawRect(self,x,y,width,height,color,fill):
        if fill == True:
            obj = gfx.GFX(display.width,display.height,self.drawPixel)
            obj.fill_rect(x-(width/2)+(display.width/2),y-(height/2)+(display.height/2),width,height,color)
        else:
            obj = gfx.GFX(display.width,display.height,self.drawPixel)
            obj.rect(x-(width/2)+(display.width/2),y-(height/2)+(display.height/2),width,height,color)

    def frame(self):
        self.framePrevious.insert(0,list(self.frameCurrent[0]))

# class Line:
#     def __init__(self,x1,y1,x2,y2,color):
#         self.x1 = x1
#         self.y1 = y1
#         self.x2 = x2
#         self.y2 = y2
#         self.color = color
#     def drawLine(self):

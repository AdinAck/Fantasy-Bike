import time
import math
import microcontroller
import digitalio
import displayio
import terminalio
from adafruit_display_text.label import Label
from adafruit_display_shapes.rect import Rect
from adafruit_display_shapes.circle import Circle
from adafruit_display_shapes.roundrect import RoundRect
from adafruit_display_shapes.triangle import Triangle

class Screen:
    def setEncoder(encoder, button):
        Screen.e = encoder
        Screen.cursorPosition = Screen.e.position
        Screen.last_cursorPosition = None
        Screen.cursor = 0

        Screen.button = button
        Screen.button.direction = digitalio.Direction.INPUT
        Screen.button.pull = digitalio.Pull.UP
        Screen.last_button_value = 1


    def setDisplay(display):
        Screen.d = display

    def __init__(self,setCurrent=False):
        Screen.palette = displayio.Palette(16)
        for i in range(16):
            Screen.palette[i] = i*1118481
        self.group = displayio.Group(max_size=24)
        self.selector = RoundRect(0,0,20,20,r=2,outline=0xFFFFFF,fill=None)
        self.group.append(self.selector)
        if setCurrent:
            Screen.current = self
        self.components = []
        self.selectable = []

        self.index = 0
        self.selecting = True

    def add(self, component):
        self.components.append(component)
        if type(component) in [Button, SingleDigitNumberSelector]:
            self.selectable.append(component)

class Button:
    def __init__(self, screen, xpos, ypos, sizex, sizey, title, func):
        screen.add(self)
        self.xpos = xpos - sizex//2
        self.ypos = ypos - sizey//2
        self.sizex = sizex
        self.sizey = sizey
        self.func = func
        self.clicked = False
        self.xBound = sizex + 4
        self.yBound = sizey + 4
        self.rect = RoundRect(self.xpos, self.ypos, sizex, sizey, r=2, outline=Screen.palette[15], fill=Screen.palette[15])
        screen.group.append(self.rect)
        self.label = Label(terminalio.FONT, text=title, max_glyphs=16, color=0x0)
        bounding_box = self.label.bounding_box
        self.label.x = self.xpos + (sizex-bounding_box[2])//2
        self.label.y = self.ypos + sizey//2 - 2
        screen.group.append(self.label)

    def refresh(self):
        if Screen.focused == self and not Screen.button.value:
            self.clicked = True
        elif self.clicked and Screen.button.value:
            self.func()
            Screen.current.selecting = True
            self.clicked = False


class Text:
    def __init__(self, screen, xpos, ypos, text, color=0xFFFFFF, max_glyphs=None):
        screen.add(self)
        if max_glyphs == None:
            max_glyphs = len(str(text))
        self.label = Label(terminalio.FONT, x=xpos, y=ypos, text=text, max_glyphs=max_glyphs, color=color)
        screen.group.append(self.label)

    def refresh(self):
        pass

class SingleDigitNumberSelector:
    def __init__(self, screen, xpos, ypos):
        screen.add(self)
        self.screen = screen
        self.xpos = xpos
        self.ypos = ypos
        self.val = 0
        self.count1 = 0
        self.count2 = 0
        self.blinkCount = 100
        self.blinkDirection = -2
        self.transparent = False
        self.xBound = 20
        self.yBound = 35
        self.rect = RoundRect(xpos-6,ypos-8,13,16,r=2,outline=0xFFFFFF,fill=None)
        screen.group.append(self.rect)
        self.tri1 = Triangle(self.xpos-5,self.ypos-11, self.xpos,self.ypos-16, self.xpos+6,self.ypos-11, fill=0xFFFFFF)
        screen.group.append(self.tri1)
        self.tri2 = Triangle(self.xpos-5,self.ypos+11, self.xpos,self.ypos+16, self.xpos+6,self.ypos+10,fill=0xFFFFFF)
        screen.group.append(self.tri2)
        self.label = Label(terminalio.FONT, text=self.val, max_glyphs=1)
        screen.group.append(self.label)
        bounding_box = self.label.bounding_box
        self.label.x = xpos - bounding_box[2]//2 + 1
        self.label.y = ypos - 1

    def refresh(self):
        if Screen.focused == self:
            if not Screen.current.selecting:
                if Screen.cursor == 1:
                    self.transparent = False
                    self.blinkCount = 100
                    self.label.color = Screen.palette[15]
                    self.val += 1
                    self.count1 = 5
                elif self.count1 == 0:
                    self.tri1.outline = 0xFFFFFF
                    self.tri1.fill = 0xFFFFFF
                if Screen.cursor == -1:
                    self.transparent = False
                    self.blinkCount = 100
                    self.label.color = Screen.palette[15]
                    self.val -= 1
                    self.count2 = 5
                elif self.count2 == 0:
                    self.tri2.outline = 0xFFFFFF
                    self.tri2.fill = 0xFFFFFF
                if Screen.cursor == 0:
                    self.label.color = Screen.palette[0 if self.blinkCount < 0 else 15 if self.blinkCount > 15 else self.blinkCount]
                    if self.blinkCount < 0-50:
                        self.blinkDirection = 2
                    elif self.blinkCount > 15+50:
                        self.blinkDirection = -2
                    self.blinkCount += self.blinkDirection

                if self.count1 != 0:
                    self.count1 -= 1
                if self.count2 != 0:
                    self.count2 -= 1

                if self.val == 10:
                    self.val = 0
                elif self.val == -1:
                    self.val = 9
                self.label.text = self.val

            elif self.label.color != 0xFFFFFF:
                self.label.color = 0xFFFFFF
class Dial:
    def __init__(self, screen, xpos, ypos, radius, positionCount, minAngle=0, maxAngle=0):
        screen.add(self)
        self.xpos = xpos
        self.ypos = ypos
        self.r = radius
        self.positionCount = positionCount
        self.position = -math.pi/2
        if minAngle != maxAngle:
            self.min = math.pi*(minAngle)/180 - math.pi/2
            self.max = math.pi*(maxAngle)/180 - math.pi/2
            self.dr = (self.max-self.min)/self.positionCount
        else:
            self.dr = 2*math.pi/self.positionCount

    def refresh(self):
        if self.max == self.min:
            if Screen.cursor == 1:
                self.position += self.dr
            if Screen.cursor == -1:
                self.position -= self.dr
            for i in range(self.positionCount + self.positionCount % 2):
                Screen.d.drawPixel(int((self.r)*math.cos(i*self.dr-math.pi/2))+self.xpos, int((self.r)*math.sin(i*self.dr-math.pi/2))+self.ypos)
        else:
            if Screen.cursor == 1 and self.position+self.dr <= self.max:
                self.position += self.dr
            if Screen.cursor == -1 and self.position-self.dr >= self.min:
                self.position -= self.dr
            for i in range(self.positionCount + self.positionCount % 2):
                Screen.d.drawPixel(int((self.r)*math.cos(i*self.dr-math.pi/2-(self.max-self.min)/2))+self.xpos, int((self.r)*math.sin(i*self.dr-math.pi/2-(self.max-self.min)/2))+self.ypos)

        Screen.d.drawHCircle(self.xpos, self.ypos, self.r-4)
        Screen.d.drawLine(self.xpos, self.ypos, int((self.r-4)*math.cos(self.position))+self.xpos, int((self.r-4)*math.sin(self.position))+self.ypos)

def update():
    Screen.last_cursorPosition = Screen.cursorPosition
    Screen.cursorPosition = Screen.e.position
    if Screen.last_cursorPosition in [None, Screen.cursorPosition]:
        Screen.cursor = 0
    elif Screen.cursorPosition - Screen.last_cursorPosition > 0:
        Screen.cursor = 1
        if Screen.current.selecting:
            if Screen.current.index < len(Screen.current.selectable)-1:
                Screen.current.index += 1
            else:
                Screen.current.index = 0
    else:
        Screen.cursor = -1
        if Screen.current.selecting:
            if Screen.current.index > 0:
                Screen.current.index -= 1
            else:
                Screen.current.index = len(Screen.current.selectable)-1
    try:
        Screen.focused = Screen.current.selectable[Screen.current.index]
    except IndexError:
        Screen.current.selecting = False

    Screen.lastScreen = Screen.current

    for component in Screen.current.components:
        component.refresh()

    if Screen.last_button_value != Screen.button.value:
        if Screen.button.value == 0 and Screen.current.selecting:
            Screen.current.selecting = False
        elif Screen.button.value == 0 and not Screen.current.selecting:
            Screen.current.selecting = True
        Screen.last_button_value = Screen.button.value

    if not Screen.button.value:
        Screen.current.selector.outline = Screen.palette[3]
    elif Screen.current.selector.outline == Screen.palette[3]:
        Screen.current.selector.outline = 0xFFFFFF

    if Screen.current.selecting and len(Screen.current.selectable) != 0:
        if type(Screen.focused) in [SingleDigitNumberSelector]:
            Screen.current.selector.x = Screen.focused.xpos - 10
            Screen.current.selector.y = Screen.focused.ypos - 18
        elif type(Screen.focused) in [Button]:
            Screen.current.selector.x = Screen.focused.xpos - 2
            Screen.current.selector.y = Screen.focused.ypos - 2
            Screen.current.selector.width = Screen.focused.xBound + 4
            Screen.current.selector.height = Screen.focused.yBound + 4
            Screen.current.selector.outline = 0xFFFFFF
    Screen.d.show(Screen.current.group)

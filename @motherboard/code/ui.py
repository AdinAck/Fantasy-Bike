import math

class Screen:
    def setEncoder(encoder):
        Screen.e = encoder
        Screen.cursorPosition = Screen.e.position
        Screen.last_cursorPosition = None
        Screen.cursor = 0

    def setDisplay(display):
        Screen.d = display

    def __init__(self):
        self.components = []

    def add(self, component):
        self.components.append(component)

    def addLiveDial(self, xpos, ypos, radius, positionCount, position):
        if Screen.current == self:
            if Screen.cursor == 1:
                position += 1
            elif Screen.cursor == -1:
                position -= 1
            Screen.d.drawHCircle(xpos, ypos, radius)
            dr = 360/positionCount

class Button:
    def __init__(self, xpos, ypos, sizex, sizey, textSize, text):
        self.xpos = xpos
        self.ypos = ypos
        self.sizex = sizex
        self.sizey = sizey
        self.textSize = textSize
        self.text = text
        self.wrapper = Wrapper(text)

    def draw(self):
        self.wrapper.val = self.text
        Screen.d.drawRect(self.xpos, self.ypos, self.sizex, self.sizey)
        Screen.d.drawStr(self.xpos, self.ypos+self.sizey-((self.sizey-self.textSize)//2), str(self.wrapper.val))


class Text:
    def __init__(self, xpos, ypos, textSize, text):
        self.xpos = xpos
        self.ypos = ypos
        self.textSize = textSize
        self.text = text
        self.wrapper = Wrapper(text)

    def draw(self):
        self.wrapper.val = self.text
        Screen.d.drawStr(self.xpos, self.ypos, str(self.wrapper.val))

class SingleDigitNumberSelector:
    def __init__(self, xpos, ypos):
        self.xpos = xpos
        self.ypos = ypos
        self.val = 0

    def draw(self):
        if Screen.cursor == 1:
            self.val += 1
        elif Screen.cursor == -1:
            self.val -= 1
        if self.val == 10:
            self.val = 0
        elif self.val == -1:
            self.val = 9
        Screen.d.drawCenterHRect(self.xpos, self.ypos, 14, 17)
        Screen.d.drawStr(self.xpos-4, self.ypos+6, str(self.val))

class Dial:
    def __init__(self, xpos, ypos, radius, positionCount, minAngle=0, maxAngle=0):
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

    def draw(self):
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

class Wrapper:
    def __init__(self,variable=None):
        self.val = variable

def update():
    Screen.last_cursorPosition = Screen.cursorPosition
    Screen.cursorPosition = Screen.e.position
    if Screen.last_cursorPosition in [None, Screen.cursorPosition]:
        Screen.cursor = 0
    elif Screen.cursorPosition - Screen.last_cursorPosition > 0:
        Screen.cursor = 1
    else:
        Screen.cursor = -1

    for component in Screen.current.components:
        component.draw()

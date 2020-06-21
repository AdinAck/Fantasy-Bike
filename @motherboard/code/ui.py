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

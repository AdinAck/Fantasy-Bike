class Screen:
    def setEncoder(encoder):
        Screen.e = encoder
        Screen.cursorPosition = Screen.e.position
        Screen.last_position = None

    def setDisplay(display):
        Screen.d = display

    def __init__(self):
        self.content = []

    def addText(self, xpos, ypos, textSize, text):
        self.content.append([Screen.d.drawStr, xpos, ypos, text])

    def addLiveText(self, xpos, ypos, textSize, text):
        if Screen.current == self:
            Screen.d.drawStr(xpos, ypos, text)

    def addButton(self, xpos, ypos, sizex, sizey, text, textSize):
        self.content.extend([[Screen.d.drawRect, xpos, ypos, sizex, sizey],[Screen.d.drawStr, xpos, ypos+sizey-((sizey-textSize)//2), text]])

    def addLiveDial(self, xpos, ypos, radius, positionCount, valueRange=None, minAngle=None, maxAngle=None):
        if Screen.current == self:
            Screen.d.drawHCircle(xpos, ypos, radius)

def update():
    Screen.cursorPosition = Screen.e.position
    if Screen.last_position is None or Screen.cursorPosition != Screen.last_position:
        Screen.last_position = Screen.cursorPosition

    for i in range(len(Screen.current.content)):
        inputArr = Screen.current.content[i][1:]
        Screen.current.content[i][0](*inputArr)

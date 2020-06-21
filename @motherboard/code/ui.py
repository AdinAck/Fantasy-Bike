class Screen:
    def setEncoder(encoder):
        Screen.e = encoder
        Screen.last_position = None

    def setDisplay(display):
        Screen.d = display

    def __init__(self):
        self.content = []

    def addButton(self, xpos, ypos, sizex, sizey, text, textSize):
        self.content.extend([[Screen.d.drawRect, xpos, ypos, sizex, sizey],[Screen.d.drawStr, xpos, ypos+sizey-((sizey-textSize)//2), text]])

def update():
    Screen.position = Screen.e.position
    if Screen.last_position is None or Screen.position != Screen.last_position:
        print(Screen.position)
    Screen.last_position = Screen.position
    for i in range(len(Screen.current.content)):
        Screen.current.content[i][0](*Screen.current.content[i][1:])

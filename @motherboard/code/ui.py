class Screen:
    def setDisplay(display):
        Screen.d = display

    def __init__(self):
        self.content = []

    def addButton(self, xpos, ypos, sizex, sizey, text):
        self.content.extend([[Screen.d.drawRect, xpos, ypos, sizex, sizey],[Screen.d.drawStr, xpos, ypos, text]])

def update():
    for i in range(len(Screen.current.content)):
        Screen.current.content[i][0](*Screen.current.content[i][1:])

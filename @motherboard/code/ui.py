class Screen:
    def setDisplay(display):
        Screen.d = display

    def __init__(self):
        self.content = []

    def addText(self,xpos,ypos,textSize,text):
        self.content.append([Screen.d.drawStr, xpos, ypos, text])

    def addButton(self, xpos, ypos, sizex, sizey, text):
        self.content.extend([[Screen.d.drawRect, xpos, ypos, sizex, sizey],[Screen.d.drawStr, xpos, ypos, text]])

    def setContent(self,arrOfContent):
        self.content = arrOfContent


def update(changing):
    for i in range(len(Screen.current.content)):
        inputArr = Screen.current.content[i][1:]
        for j in changing:
            if id(inputArr[-1]) == id(j):
                inputArr[-1] = j
        Screen.current.content[i][0](*inputArr)

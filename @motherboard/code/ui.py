class UI:
    def __init__(self, display):
        self.d = display

    def menu1(self, title, elements):
        self.d.setFont(11)
        self.d.drawStr(4,12,title)
        self.d.drawLine(4,14,252,14)

        for i in range(len(elements)):
            self.d.drawRect(6+i*(60)-(4*60)*(i>3), 18+(i//4)*(22), 56, 18)

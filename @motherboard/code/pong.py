class Pong:
    paddleLength = 8
    paddleWidth = 4
    paddleY = 32-paddleLength//2
    paddleX = 1
    boardDimensions = 256, 64
    ballPos = 128, 32
    score = 0

    def __init__(self, display, encoder):
        self.d = display
        self.e = encoder
        self.cursorPosition = self.e.position
        self.last_cursorPosition = None
        self.cursor = 0

    def draw(self):
        self.d.drawRect(Pong.paddleX, Pong.paddleY, Pong.paddleWidth, Pong.paddleLength)
        self.d.drawPixel(Pong.ballPos[0], Pong.ballPos[1])

    def update(self):
        self.draw()

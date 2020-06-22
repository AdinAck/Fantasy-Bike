class Pong:
    paddleLength = 8
    paddleWidth = 4
    paddleY = 32-paddleLength//2
    paddleX = 1
    boardDimensions = [256, 64]
    ballPos = [128, 32]
    ballSpeed = [1, 1]
    score1 = 0
    score2 = 0

    def __init__(self, display, encoder):
        self.d = display
        self.e = encoder
        self.cursorPosition = self.e.position
        self.last_cursorPosition = None
        self.cursor = 0

    def draw(self):
        self.d.drawRect(Pong.paddleX, Pong.paddleY, Pong.paddleWidth, Pong.paddleLength)
        self.d.drawPixel(Pong.ballPos[0], Pong.ballPos[1])
        self.d.drawLine(128,0,128,10)
        textGap = 1
        score1Width = (len(str(Pong.score1)) - 3)*len(str(Pong.score1)) + textGap*(len(str(Pong.score1)) - 1)
        score1Pos = 118 - score1Width
        self.d.drawStr(score1Pos, 11, 9, str(Pong.score1))
        self.d.drawStr(131, 11, 9, str(Pong.score1))

    def checkPaddleCollision(self,paddleX,paddleY,paddleWidth,paddleLength,ballX,ballY):
        return ballX >= paddleX and ballX <= paddleX + paddleWidth and ballY >= paddleY and ballY <= paddleY + paddleLength

    def update(self):
        self.last_cursorPosition = self.cursorPosition
        self.cursorPosition = self.e.position
        if self.last_cursorPosition in [None, self.cursorPosition]:
            self.cursor = 0
        elif self.cursorPosition - self.last_cursorPosition > 0:
            self.cursor = 1
        else: self.cursor = -1
        Pong.paddleY -= self.cursor*8
        if Pong.paddleY < 0:
            Pong.paddleY = 0
        elif Pong.paddleY > Pong.boardDimensions[1] - Pong.paddleLength - 1:
            Pong.paddleY = Pong.boardDimensions[1] - Pong.paddleLength - 1

        if Pong.ballPos[0] > Pong.boardDimensions[0] - 2 or Pong.ballPos[0] < 1:
            Pong.ballSpeed[0] *= -1
        if Pong.ballPos[1] > Pong.boardDimensions[1] - 2 or Pong.ballPos[1] < 1:
            Pong.ballSpeed[1] *= -1
        if self.checkPaddleCollision(Pong.paddleX,Pong.paddleY,Pong.paddleWidth,Pong.paddleLength,Pong.ballPos[0],Pong.ballPos[1]):
            Pong.ballSpeed[0] *= -1
        Pong.ballPos[0] += Pong.ballSpeed[0]
        Pong.ballPos[1] += Pong.ballSpeed[1]
        self.draw()

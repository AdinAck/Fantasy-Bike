import random
import math
class Pong:


    def reset():
        Pong.paddleLength = 8
        Pong.paddleWidth = 4
        Pong.paddleY = 32-Pong.paddleLength//2
        Pong.paddleX = 1
        Pong.boardDimensions = [256, 64]
        Pong.ballPos = [128, 32]

        Pong.ballSpeed = Pong.getRandomSpeed()
        Pong.score1 = 0
        Pong.score2 = 0
        Pong.AiX = Pong.boardDimensions[0]-Pong.paddleX - Pong.paddleWidth
        Pong.AiY = Pong.paddleY
        Pong.AiTarget = 32
        Pong.flashCount = 0

    def __init__(self, display, encoder):
        self.d = display
        self.e = encoder
        self.cursorPosition = self.e.position
        self.last_cursorPosition = None
        self.cursor = 0
        Pong.reset()

    def getRandomSpeed():
        out = [1,1]
        r1 = random.randint(0,1)
        r2 = random.randint(0,1)
        if r1 == 0:
            out[0]*=-1
        if r2 == 0:
            out[1]*=-1
        return out

    def draw(self):
        self.d.drawRect(Pong.paddleX, Pong.paddleY, Pong.paddleWidth, Pong.paddleLength)
        self.d.drawRect(Pong.AiX, Pong.AiY, Pong.paddleWidth, Pong.paddleLength)
        self.d.drawPixel(Pong.ballPos[0], Pong.ballPos[1])
        self.d.drawLine(128,0,128,12)
        textGap = 1
        score1Width = (len(str(Pong.score1))-1)*7 + textGap*((len(str(Pong.score1))-1) - 1)
        score2Width = (len(str(Pong.score2)))*7 + textGap*((len(str(Pong.score2))) - 1)
        score1Pos = 119 - score1Width
        self.d.drawStr(score1Pos, 11, 9, str(Pong.score1))
        self.d.drawStr(131, 11, 9, str(Pong.score2))
        if Pong.flashCount != 0:
            self.d.drawRect(score1Pos-1,0,score2Width+131-score1Pos+1,12)

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
        Pong.paddleY += self.cursor*4
        if Pong.paddleY < 0:
            Pong.paddleY = 0
        elif Pong.paddleY > Pong.boardDimensions[1] - Pong.paddleLength - 1:
            Pong.paddleY = Pong.boardDimensions[1] - Pong.paddleLength - 1
        if ballPos[0] == Pong.boardDimensions[0]//2-paddleWidth-paddleX:
            Pong.AiTarget = ballPos[1]-paddleLength//2
        if Pong.AiTarget > Pong.AiY + Pong.paddleLength//2-1:
            Pong.AiY += math.ceil(3/4)
        if Pong.AiTarget < Pong.AiY + Pong.paddleLength//2+1:
            Pong.AiY -= math.ceil(3/4)
        if Pong.AiY <0:
            Pong.AiY = 0
        if Pong.AiY + Pong.paddleLength > Pong.boardDimensions[1] - 1:
            Pong.AiY = Pong.boardDimensions[1]-1-Pong.paddleLength
        if Pong.ballPos[0] > Pong.boardDimensions[0] - 2:
            Pong.score1 += 1
            Pong.flashCount = 10
            Pong.ballPos = [128, 32]
            Pong.ballSpeed = Pong.getRandomSpeed()
        if Pong.ballPos[0] < 1:
            Pong.score2 += 1
            Pong.flashCount = 10
            Pong.ballPos = [128, 32]
            Pong.ballSpeed = Pong.getRandomSpeed()
        if Pong.ballPos[1] > Pong.boardDimensions[1] - 2 or Pong.ballPos[1] < 1:
            Pong.ballSpeed[1] *= -1

        if self.checkPaddleCollision(Pong.paddleX,Pong.paddleY,Pong.paddleWidth,Pong.paddleLength,Pong.ballPos[0],Pong.ballPos[1]):
            Pong.ballSpeed[0] *= -1
        if self.checkPaddleCollision(Pong.AiX,Pong.AiY,Pong.paddleWidth,Pong.paddleLength,Pong.ballPos[0],Pong.ballPos[1]):
            Pong.ballSpeed[0] *= -1



        Pong.ballPos[0] += Pong.ballSpeed[0]
        Pong.ballPos[1] += Pong.ballSpeed[1]

        if Pong.flashCount != 0:
            Pong.flashCount -= 1

        self.draw()

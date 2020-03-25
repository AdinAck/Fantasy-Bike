# Animation library
# By Adin Ackerman
# ======================================================================================================================
# c should be no lower than -0.3

class Animation:
    def __init__(self,display):
        self.d = display
        self.animQueue = []
        self.testSquareRun = False

    def drawFrame(self,tick):
        i = 0
        while i < len(self.animQueue):
            if "testSquare" in self.animQueue[i][0]:
                if int((tick-self.animQueue[i][1])*60) >= len(self.animQueue[i][2][0]): # If the animation is complete...
                    self.animQueue.pop(i) # Remove from queue.
                    self.testSquareRun = False
                    if len(self.animQueue) > 1: # This is not needed on last animation type if statement
                        i -= 1 # Make sure i is updated for new array size.
                    else:
                        break
                else:
                    self.testSquareRun = True
                    position = (self.animQueue[i][2][0][int((tick-self.animQueue[i][1])*60)],
                                self.animQueue[i][2][1][int((tick-self.animQueue[i][1])*60)])
                    self.d.drawRect(position[0],position[1],
                                    self.animQueue[i][3],self.animQueue[i][3])
            if "testLine" in self.animQueue[i][0]:
                if int((tick-self.animQueue[i][1])*60) >= len(self.animQueue[i][2][0]): # If the animation is complete...
                    self.animQueue.pop(i) # Remove from queue.
                    self.testSquareRun = False
                    if len(self.animQueue) > 1: # This is not needed on last animation type if statement
                        i -= 1 # Make sure i is updated for new array size.
                else:
                    self.testSquareRun = True
                    position1 = (self.animQueue[i][2][0][int((tick-self.animQueue[i][1])*60)],
                                self.animQueue[i][2][1][int((tick-self.animQueue[i][1])*60)])
                    position2 = (self.animQueue[i][3][0][int((tick-self.animQueue[i][1])*60)],
                                self.animQueue[i][3][1][int((tick-self.animQueue[i][1])*60)])
                    self.d.drawLine(position1[0],position1[1],position2[0],position2[1])
            i += 1

    def keyframeGen(self, i, frames, type, start, end, c=None): # A bunch of math stuff...don't worry about it too much.
        if type == "linear":
            x = i/frames
            return [int((end[0]-start[0])*x+start[0]),int((end[1]-start[1])*x+start[1])]
        if type == "ease":
            x = i/frames
            f = 2*(x+.5)*(x-.5)+.5
            g = 2*(x-.5)*(x-1.5)+.5
            h = -c*(x+.5)*(x-.5)+1
            l = -c*(x-.5)*(x-1.5)+1
            if x >= 0 and x < .5:
                return [int(start[0]+(f/h)*(end[0]-start[0])),int(start[1]+(f/h)*(end[1]-start[1]))]
            elif x <= 1:
                return [int(start[0]+(-(g/l)+1)*(end[0]-start[0])),int(start[1]+(-(g/l)+1)*(end[1]-start[1]))]
        if type == "easeIn":
            x = i/frames
            f = .5*(x+1)*(x-1)+.5
            h = -c*(x+1)*(x-1)+1
            return [int(start[0]+(f/h)*2*(end[0]-start[0])),int(start[1]+(f/h)*2*(end[1]-start[1]))]
        if type == "easeOut":
            x = 1 - (i/frames)
            f = .5*(x+1)*(x-1)+.5
            h = -c*(x+1)*(x-1)+1
            return [int(end[0]+(f/h)*2*(start[0]-end[0])),int(end[1]+(f/h)*2*(start[1]-end[1]))]

    def loadKeyframes(self, x, y):
        count = 0
        with open(x, "r") as f:
            for line in f:
                count += 1
        f.close()
        fx = open(x, "r")
        fy = open(y, "r")
        try:
            return ([round(float(i[:-2])) for i in fx.readlines()[:-1]],
                    [round(float(i[:-2])) for i in fy.readlines()[:-1]])
        except Exception as e:
            print("Exception: ",e)
            print("File(s) may be formatted incorrectly.")

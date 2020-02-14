# Animation library
# By Adin Ackerman
# ==============================================================================
# c should be no lower than -0.3

class Animation:
    def __init__(self,display):
        self.d = display
        self.animQueue = []

    def drawFrame(self,tick):
        i = 0
        while i < len(self.animQueue):
            if "testSquare" in self.animQueue[i][0]:
                if -self.animQueue[i][1]-self.animQueue[i][2]+tick >= 0:
                    self.animQueue.pop(i)
                    if len(self.animQueue) > 1: # This is not needed on last animation type if statement
                        i -= 1
                    else:
                        break
                else:
                    position = self.keyframeGen(tick-self.animQueue[i][1],
                                                self.animQueue[i][2],
                                                self.animQueue[i][6],
                                                self.animQueue[i][4],
                                                self.animQueue[i][5],
                                                self.animQueue[i][3])
                    self.d.drawRect(position[0],position[1],
                                    self.animQueue[i][7],self.animQueue[i][7])
            if "testLine" in self.animQueue[i][0]:
                if -self.animQueue[i][1]-self.animQueue[i][2]+tick >= 0:
                    self.animQueue.pop(i)
                    i -= 1
                else:
                    position1 = self.keyframeGen(tick-self.animQueue[i][1],
                                                self.animQueue[i][2],
                                                self.animQueue[i][8],
                                                self.animQueue[i][4],
                                                self.animQueue[i][5],
                                                self.animQueue[i][3])
                    position2 = self.keyframeGen(tick-self.animQueue[i][1],
                                                self.animQueue[i][2],
                                                self.animQueue[i][8],
                                                self.animQueue[i][6],
                                                self.animQueue[i][7],
                                                self.animQueue[i][3])
                    self.d.drawLine(position1[0],position1[1],position2[0],position2[1])
            i += 1

    def keyframeGen(self, i, frames, type, start, end, c=None):
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

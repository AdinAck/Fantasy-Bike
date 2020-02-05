# Animation curve library
# By Adin Ackerman
# ==============================================================================
# c should be no lower than -0.3

def curve(i, frames, type, start, end, c=None):
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

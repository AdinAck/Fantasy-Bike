import numpy as np

n = 20 # dimensions of grid
c = 3 # amount of curve deviation (0-17)

a = np.zeros((n,n))

# Insert point onto grid
def point(x,y):
    a[-y-1,x] = 1

# Mathematics
b = 2**c + c**2 # exponential conversion
def y(x):
    f = 2*(x+.5)*(x-.5)+.5
    g = 2*(x-.5)*(x-1.5)+.5
    h = -b*(x+.5)*(x-.5)+1
    l = -b*(x-.5)*(x-1.5)+1
    if x >= 0 and x < .5:
        return f/h
    elif x <= 1:
        return -(g/l)+1

# Loop to plot points
for x in range(n):
    point(x,int(n*y(x/n)))

# Final result
print(a)

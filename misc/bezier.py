import numpy as np

# Time coordinate
x = 8

# Positions of 4 points (for cubic bezier)
x0 = 0
y0 = 0
x1 = 5
y1 = 0
x2 = 5
y2 = 10
x3 = 10
y3 = 10

# Coefficients of polynomial form
a = x3-3*x2+3*x1-x0
b = 3*x2-6*x1+3*x0
c = 3*x1-3*x0
d = x0-x

# Components of Cardano condenced formula
# p = -b/(3*a)
# q = p**3+(b*c-3*a*d)/(6*a**2)
# r = c/(3*a)

# Cardono condenced cubic formula
# t = (q+(q**2+(r-p**2)**3)**(1/2))**(1/3)+(q-(q**2+(r-p**2)**3)**(1/2))**(1/3)+p

# New formula that will suck a solid amount
t = (-b/(3*a)
    -(1/(3*a))*((1/2)*(2*b**3-9*a*b*c+27*a**2*d+((2*b**3-9*a*b*c+27*a**2*d)**2-4*(b**2-3*a*c)**3)**(1/2)))**(1/3)
    -(1/(3*a))*((1/2)*(2*b**3-9*a*b*c+27*a**2*d-((2*b**3-9*a*b*c+27*a**2*d)**2-4*(b**2-3*a*c)**3)**(1/2)))**(1/3))

t = (-1)**(1/2)

# Numpy root finder
# f = [a,b,c,d]
# t = str(np.roots(f)[2])[1:-4]

print("a: "+str(a))
print("b: "+str(b))
print("c: "+str(c))
print("d: "+str(d))
# print("p: "+str(p))
# print("q: "+str(q))
# print("r: "+str(r))
print("t: "+str(t))

print("t   | x,y")

for i in range(11):
    t = i/10
    x = t**3*(x3-3*x2+3*x1-x0)+t**2*(3*x2-6*x1+3*x0)+t*(3*x1-3*x0)+x0
    y = t**3*(y3-3*y2+3*y1-y0)+t**2*(3*y2-6*y1+3*y0)+t*(3*y1-3*y0)+y0
    print(str(t)+" | "+str(round(x,3))+","+str(round(y,3)))

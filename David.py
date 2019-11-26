a = [0,5,3,1,1]
b = [5,4,2,1,8,1,9]
c = []
for i in range(len(a)):
    if a[i] in b:
        c.append(a[i])
for i in range(len(b)):
    if b[i] in a:
        c.append(b[i])
print(c)

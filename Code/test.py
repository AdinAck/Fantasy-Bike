var = "[1,2,3]"

def test(thing):
    thing[0] = "test"

test(var)
print(var)

class Test:
    def __init__(self):
        self.test1 = [[]]
        self.test2 = [[]]
    def run(self):
        self.test1[0] = 1
        self.test2[0] = self.test1[0]
        self.test1[0] = 2
        print(self.test1)
        print(self.test2)

t = Test()
t.run()

import time
class SuperTime:
    def __init__(self):
        self.previous = time.monotonic_ns()
        self.current = time.monotonic_ns()
    def check(self,time_wait):
        self.time_wait = time_wait
        self.current = time.monotonic_ns()
        if self.current >= self.previous+(self.time_wait*(10**9)):
            self.previous = self.current
            return False
        else:
            return True
    def getTime(self):
        self.current = time.monotonic_ns()
        actualTime = (self.current-self.previous)/10**9
        self.previous = self.current
        return actualTime

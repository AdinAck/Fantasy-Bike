import board
import busio

class Display:
    def __init__(self,adrs):
        print("Establishing connection with display controller.")
        bus = busio.I2C(board.SCL, board.SDA)
        print("Attempting to lock I2C bus...")
        while not bus.try_lock():
            pass
        print("Success!")
        busAddresses = [hex(i) for i in bus.scan()]
        print(busAddresses)

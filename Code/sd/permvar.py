def loadDefaults():
    import os
    defaultSettings = ["[0x00: 0000000000000000]",
                       "[0x01: 0000000000000000]",
                       "[0x02: 0000000000000000]",
                       "[0x03: 0000000000000000]",
                       "[0x04: 0000000000000000]",
                       "[0x05: 0000000000000000]",
                       "[0x06: 0000000000000000]",
                       "[0x07: 0000000000000000]",
                       "[0x08: 0000000000000000]",
                       "[0x09: 0000000000000000]",
                       "[0x0A: 0000000000000000]",
                       "[0x0B: 0000000000000000]",
                       "[0x0C: 0000000000000000]",
                       "[0x0D: 0000000000000000]",
                       "[0x0E: 0000000000000000]",
                       "[0x0F: 0000000000000000]",
                       "[0x10: 0000000000000000]",
                       "[0x11: 0000000000000000]",
                       "[0x12: 0000000000000000]",
                       "[0x13: 0000000000000000]",
                       "[0x14: 0000000000000000]",
                       "[0x15: 0000000000000000]",
                       "[0x16: 0000000000000000]",
                       "[0x17: 0000000000000000]",
                       "[0x18: 0000000000000000]",
                       "[0x19: 0000000000000000]",
                       "[0x1A: 0000000000000000]",
                       "[0x1B: 0000000000000000]",
                       "[0x1C: 0000000000000000]",
                       "[0x1D: 0000000000000000]",
                       "[0x1E: 0000000000000000]",
                       "[0x1F: 0000000000000000]",
                       "[0x20: 0000000000000000]",
                       "[0x21: 0000000000000000]",
                       "[0x22: 0000000000000000]",
                       "[0x23: 0000000000000000]",
                       "[0x24: 0000000000000000]",
                       "[0x25: 0000000000000000]",
                       "[0x26: 0000000000000000]",
                       "[0x27: 0000000000000000]",
                       "[0x28: 0000000000000000]",
                       "[0x29: 0000000000000000]",
                       "[0x2A: 0000000000000000]",
                       "[0x2B: 0000000000000000]",
                       "[0x2C: 0000000000000000]",
                       "[0x2D: 0000000000000000]",
                       "[0x2E: 0000000000000000]",
                       "[0x2F: 0000000000000000]",
                       "[0x30: 0000000000000000]",
                       "[0x31: 0000000000000000]",
                       "[0x32: 0000000000000000]",
                       "[0x33: 0000000000000000]",
                       "[0x34: 0000000000000000]",
                       "[0x35: 0000000000000000]",
                       "[0x36: 0000000000000000]",
                       "[0x37: 0000000000000000]",
                       "[0x38: 0000000000000000]",
                       "[0x39: 0000000000000000]",
                       "[0x3A: 0000000000000000]",
                       "[0x3B: 0000000000000000]",
                       "[0x3C: 0000000000000000]",
                       "[0x3D: 0000000000000000]",
                       "[0x3E: 0000000000000000]",
                       "[0x3F: 0000000000000000]",
                       "[0x40: 0000000000000000]",
                       "[0x41: 0000000000000000]",
                       "[0x42: 0000000000000000]",
                       "[0x43: 0000000000000000]",
                       "[0x44: 0000000000000000]",
                       "[0x45: 0000000000000000]",
                       "[0x46: 0000000000000000]",
                       "[0x47: 0000000000000000]",
                       "[0x48: 0000000000000000]",
                       "[0x49: 0000000000000000]",
                       "[0x4A: 0000000000000000]",
                       "[0x4B: 0000000000000000]",
                       "[0x4C: 0000000000000000]",
                       "[0x4D: 0000000000000000]",
                       "[0x4E: 0000000000000000]",
                       "[0x4F: 0000000000000000]",
                       "[0x50: 0000000000000000]",
                       "[0x51: 0000000000000000]",
                       "[0x52: 0000000000000000]",
                       "[0x53: 0000000000000000]",
                       "[0x54: 0000000000000000]",
                       "[0x55: 0000000000000000]",
                       "[0x56: 0000000000000000]",
                       "[0x57: 0000000000000000]",
                       "[0x58: 0000000000000000]",
                       "[0x59: 0000000000000000]",
                       "[0x5A: 0000000000000000]",
                       "[0x5B: 0000000000000000]",
                       "[0x5C: 0000000000000000]",
                       "[0x5D: 0000000000000000]",
                       "[0x5E: 0000000000000000]",
                       "[0x5F: 0000000000000000]",
                       "[0x60: 0000000000000000]",
                       "[0x61: 0000000000000000]",
                       "[0x62: 0000000000000000]",
                       "[0x63: 0000000000000000]",
                       "[0x64: 0000000000000000]",
                       "[0x65: 0000000000000000]",
                       "[0x66: 0000000000000000]",
                       "[0x67: 0000000000000000]",
                       "[0x68: 0000000000000000]",
                       "[0x69: 0000000000000000]",
                       "[0x6A: 0000000000000000]",
                       "[0x6B: 0000000000000000]",
                       "[0x6C: 0000000000000000]",
                       "[0x6D: 0000000000000000]",
                       "[0x6E: 0000000000000000]",
                       "[0x6F: 0000000000000000]",
                       "[0x70: 0000000000000000]",
                       "[0x71: 0000000000000000]",
                       "[0x72: 0000000000000000]",
                       "[0x73: 0000000000000000]",
                       "[0x74: 0000000000000000]",
                       "[0x75: 0000000000000000]",
                       "[0x76: 0000000000000000]",
                       "[0x77: 0000000000000000]",
                       "[0x78: 0000000000000000]",
                       "[0x79: 0000000000000000]",
                       "[0x7A: 0000000000000000]",
                       "[0x7B: 0000000000000000]",
                       "[0x7C: 0000000000000000]",
                       "[0x7D: 0000000000000000]",
                       "[0x7E: 0000000000000000]",
                       "[0x7F: 0000000000000000]",
                       "[0x80: 0000000000000000]",
                       "[0x81: 0000000000000000]",
                       "[0x82: 0000000000000000]",
                       "[0x83: 0000000000000000]",
                       "[0x84: 0000000000000000]",
                       "[0x85: 0000000000000000]",
                       "[0x86: 0000000000000000]",
                       "[0x87: 0000000000000000]",
                       "[0x88: 0000000000000000]",
                       "[0x89: 0000000000000000]",
                       "[0x8A: 0000000000000000]",
                       "[0x8B: 0000000000000000]",
                       "[0x8C: 0000000000000000]",
                       "[0x8D: 0000000000000000]",
                       "[0x8E: 0000000000000000]",
                       "[0x8F: 0000000000000000]",
                       "[0x90: 0000000000000000]",
                       "[0x91: 0000000000000000]",
                       "[0x92: 0000000000000000]",
                       "[0x93: 0000000000000000]",
                       "[0x94: 0000000000000000]",
                       "[0x95: 0000000000000000]",
                       "[0x96: 0000000000000000]",
                       "[0x97: 0000000000000000]",
                       "[0x98: 0000000000000000]",
                       "[0x99: 0000000000000000]",
                       "[0x9A: 0000000000000000]",
                       "[0x9B: 0000000000000000]",
                       "[0x9C: 0000000000000000]",
                       "[0x9D: 0000000000000000]",
                       "[0x9E: 0000000000000000]",
                       "[0x9F: 0000000000000000]",
                       "[0xA0: 0000000000000000]",
                       "[0xA1: 0000000000000000]",
                       "[0xA2: 0000000000000000]",
                       "[0xA3: 0000000000000000]",
                       "[0xA4: 0000000000000000]",
                       "[0xA5: 0000000000000000]",
                       "[0xA6: 0000000000000000]",
                       "[0xA7: 0000000000000000]",
                       "[0xA8: 0000000000000000]",
                       "[0xA9: 0000000000000000]",
                       "[0xAA: 0000000000000000]",
                       "[0xAB: 0000000000000000]",
                       "[0xAC: 0000000000000000]",
                       "[0xAD: 0000000000000000]",
                       "[0xAE: 0000000000000000]",
                       "[0xAF: 0000000000000000]",
                       "[0xB0: 0000000000000000]",
                       "[0xB1: 0000000000000000]",
                       "[0xB2: 0000000000000000]",
                       "[0xB3: 0000000000000000]",
                       "[0xB4: 0000000000000000]",
                       "[0xB5: 0000000000000000]",
                       "[0xB6: 0000000000000000]",
                       "[0xB7: 0000000000000000]",
                       "[0xB8: 0000000000000000]",
                       "[0xB9: 0000000000000000]",
                       "[0xBA: 0000000000000000]",
                       "[0xBB: 0000000000000000]",
                       "[0xBC: 0000000000000000]",
                       "[0xBD: 0000000000000000]",
                       "[0xBE: 0000000000000000]",
                       "[0xBF: 0000000000000000]",
                       "[0xC0: 0000000000000000]",
                       "[0xC1: 0000000000000000]",
                       "[0xC2: 0000000000000000]",
                       "[0xC3: 0000000000000000]",
                       "[0xC4: 0000000000000000]",
                       "[0xC5: 0000000000000000]",
                       "[0xC6: 0000000000000000]",
                       "[0xC7: 0000000000000000]",
                       "[0xC8: 0000000000000000]",
                       "[0xC9: 0000000000000000]",
                       "[0xCA: 0000000000000000]",
                       "[0xCB: 0000000000000000]",
                       "[0xCC: 0000000000000000]",
                       "[0xCD: 0000000000000000]",
                       "[0xCE: 0000000000000000]",
                       "[0xCF: 0000000000000000]",
                       "[0xD0: 0000000000000000]",
                       "[0xD1: 0000000000000000]",
                       "[0xD2: 0000000000000000]",
                       "[0xD3: 0000000000000000]",
                       "[0xD4: 0000000000000000]",
                       "[0xD5: 0000000000000000]",
                       "[0xD6: 0000000000000000]",
                       "[0xD7: 0000000000000000]",
                       "[0xD8: 0000000000000000]",
                       "[0xD9: 0000000000000000]",
                       "[0xDA: 0000000000000000]",
                       "[0xDB: 0000000000000000]",
                       "[0xDC: 0000000000000000]",
                       "[0xDD: 0000000000000000]",
                       "[0xDE: 0000000000000000]",
                       "[0xDF: 0000000000000000]",
                       "[0xE0: 0000000000000000]",
                       "[0xE1: 0000000000000000]",
                       "[0xE2: 0000000000000000]",
                       "[0xE3: 0000000000000000]",
                       "[0xE4: 0000000000000000]",
                       "[0xE5: 0000000000000000]",
                       "[0xE6: 0000000000000000]",
                       "[0xE7: 0000000000000000]",
                       "[0xE8: 0000000000000000]",
                       "[0xE9: 0000000000000000]",
                       "[0xEA: 0000000000000000]",
                       "[0xEB: 0000000000000000]",
                       "[0xEC: 0000000000000000]",
                       "[0xED: 0000000000000000]",
                       "[0xEE: 0000000000000000]",
                       "[0xEF: 0000000000000000]",
                       "[0xF0: 0000000000000000]",
                       "[0xF1: 0000000000000000]",
                       "[0xF2: 0000000000000000]",
                       "[0xF3: 0000000000000000]",
                       "[0xF4: 0000000000000000]",
                       "[0xF5: 0000000000000000]",
                       "[0xF6: 0000000000000000]",
                       "[0xF7: 0000000000000000]",
                       "[0xF8: 0000000000000000]",
                       "[0xF9: 0000000000000000]",
                       "[0xFA: 0000000000000000]",
                       "[0xFB: 0000000000000000]",
                       "[0xFC: 0000000000000000]",
                       "[0xFD: 0000000000000000]",
                       "[0xFE: 0000000000000000]",
                       "[0xFF: 0000000000000000]"]

    print("Writing defaults...")
    os.remove("/sd/settings.config")
    f = open("/sd/settings.config","a")
    for i in range(len(defaultSettings)):
        f.write(defaultSettings[i])
    f.close()
    print("Written...")

    f = open("/sd/settings.config","r")
    configRead = f.read()
    f.close()
    print("Read...")

    return configRead

def format(configRead):
    import os
    configSettings = []

    for i in range(256):
        configSettings.append(configRead[24*i:(24*i)+24])

    try:
        if len(configRead) == 0:
            raise Exception("Configuration length 0.")
        for i in range(len(configSettings)):
            if configSettings[i] == "":
                raise Exception("Incorrectly formatted.")
    except:
        os.remove("/sd/settings.config")
        raise Exception("Configuration file is empty or incorrectly formatted, please reboot.")

    print("Configuration read formatted successfully.")
    return configSettings

def getValue(register,position,config):
    for i in range(len(config)):
        if register in config[i]:
            value = config[i][7:23]
            position = 16-position[1], 16-position[0]
            return value[position[0]:position[1]]

def sendValue(register,position,value,config):
    import os
    oldValue = getValue(register,position,config)
    for i in range(len(config)):
        if register in config[i]:
            position = 16-position[1], 16-position[0]
            pulledValue = config[i][7:23]
            pulledValue = pulledValue[0:position[0]]+value+pulledValue[position[1]:]
            print("Changed register "+str(register)+" value "+str(position)+" from "+str(oldValue)+" to "+str(value))
            config[i] = "["+register+": "+pulledValue+"]"

def saveConfig(config):
    import os
    print("Saving...")
    os.remove("/sd/settings.config")
    f = open("/sd/settings.config", "a")
    for i in range(len(config)):
        f.write(config[i])
    f.close()

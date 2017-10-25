import serial
import time
ser = serial.Serial('/dev/ttyS0', 9600, timeout=0)
var = 'Elien'
ser.write(var)
while 1:
    try:
        print ser.readline()
        time.sleep(1)
    except KeyboardInterrupt:
        print('Data could not be read')


import serial
import time
 
s = serial.Serial('/dev/ttyACM0', 9600) 
 
try:
    while True:
        response = s.readline()
        if response.startswith("BD"):
            if response.count(';') == 5:
                print("test");
                fichier = open("database.csv","a");
                toWrite = response[3:]
                fichier.write(toWrite)
                fichier.close()
except KeyboardInterrupt:
    s.close()

# import serial
# import DbClass as DbClass
# import time
#
# spelersName = DbClass.DbClass().getdata("SELECT RFID FROM spelers WHERE ID = '1'")
# ser = serial.Serial("/dev/ttyS0",9600,timeout=0)
# s = ser.readline()
# print(s)
# while 1:
#     if spelersName == '322372502645':
#         ser.write(spelersName)
#     else:
#         pass




import serial
import DbClass as DbClass
import time
ser = serial.Serial('/dev/ttyS0', 9600, timeout=0)
while 1:
    try:
        s = ser.readline(100)
        print (s)
        speler1 = DbClass.DbClass().getdata("SELECT Naam FROM spelers WHERE ID = 1")
        speler2 = DbClass.DbClass().getdata("SELECT Naam FROM spelers WHERE ID = 2")
        speler3 = DbClass.DbClass().getdata("SELECT Naam FROM spelers WHERE ID = 3")
        speler4 = DbClass.DbClass().getdata("SELECT Naam FROM spelers WHERE ID = 4")
        sintJorisStraat1 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 5")
        sintJorisStraat2 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 6")
        rijselstraat1 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 7")
        rijselstraat2 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 8")
        rijselstraat3 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 9")
        treehouse = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 10")
        oasis = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 11")
        theOffices = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 12")
        atelier1 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 13")
        atelier2 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 14")
        atelier3 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 15")
        theSquare1 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 16")
        theSquare2 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 17")
        theSquare3 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 18")
        theLevel1 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 19")
        theLevel2 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 20")
        theLevel3 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 21")
        idc1 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 22")
        idc2 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 23")
        idc3 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 24")
        gkg1 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 25")
        gkg2 = DbClass.DbClass().getdata("SELECT Naam FROM eigendomskaarten WHERE ID = 26")

        if s == "322372502645":
            print(speler1[0])
            ser.write(s)
            ser.write(str(speler1[0]))
        elif s == "1971563146104":
            print(speler2[0])
            ser.write(str(speler2[0]))
        elif s == "13120188145131":
            print(speler3[0])
            ser.write(str(speler3[0]))
        elif s == "691516446188":
            print(speler4[0])
            ser.write(str(speler4[0]))
        elif s == "51935646210":
            print(sintJorisStraat1[0])
            ser.write(str(sintJorisStraat1[0]))
        elif s == "212201914591":
            print(sintJorisStraat2[0])
            ser.write(str(sintJorisStraat2[0]))
        elif s == "692452646132":
            print(rijselstraat1[0])
            ser.write(str(rijselstraat1[0]))
        elif s == "2169464680":
            print(rijselstraat2[0])
            ser.write(str(rijselstraat2[0]))
        elif s == "69231946111":
            print(rijselstraat3[0])
            ser.write(str(rijselstraat3[0]))
        elif s == "1651201346254":
            print(treehouse[0])
            ser.write(str(treehouse[0]))
        elif s == "181616146155":
            print(oasis[0])
            ser.write(str(oasis[0]))
        elif s == "1011341946222":
            print(theOffices[0])
            ser.write(str(theOffices[0]))
        elif s == "1171643046225":
            print(atelier1[0])
            ser.write(str(atelier1[0]))
        elif s == "19720346252":
            print(atelier2[0])
            ser.write(str(atelier2[0]))
        elif s == "851563646195":
            print(atelier3[0])
            ser.write(str(atelier3[0]))
        elif s == "245229264636":
            print(theSquare1[0])
            ser.write(str(theSquare1[0]))
        elif s == "213442646205":
            print(theSquare2[0])
            ser.write(str(theSquare2[0]))
        elif s == "1012031146139":
            print(theSquare3[0])
            ser.write(str(theSquare3[0]))
        elif s == "3620314912118":
            print(theLevel1[0])
            ser.write(str(theLevel1[0]))
        elif s == "531675146143":
            print(theLevel2[0])
            ser.write(str(theLevel2[0]))
        elif s == "211015846100":
            print(theLevel3[0])
            ser.write(str(theLevel3[0]))
        elif s == "197241446253":
            print(idc1[0])
            ser.write(str(idc1[0]))
        elif s == "1171355246232":
            print(idc2[0])
            ser.write(str(idc2[0]))
        elif s == "149166246149":
            print(idc3[0])
            ser.write(str(idc3[0]))
        elif s == "181726046239":
            print(gkg1[0])
            ser.write(str(gkg1[0]))
        elif s == "149147524628":
            print(gkg2[0])
            ser.write(str(gkg2[0]))
        elif s == "83153821459":
            print(gkg2[0])
            ser.write(str(gkg2[0]))
        else:
            pass
        time.sleep(1)
    except KeyboardInterrupt:
        print('Data could not be read')


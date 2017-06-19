class DbClass:
    def getdata(self, querry):
        import mysql.connector
        from mysql.connector import Error
        var = ""
        try:
            conn = mysql.connector.connect(host='localhost', database='dbmonopoly', user='root', password='Zkhq3t57')
            if conn.is_connected() == False:
                print("not connected")
                quit()
            cursor = conn.cursor()
            cursor.execute(querry)
            rows = cursor.fetchall()
            for row in rows:
                var += str(row[0])

            return var

        except Error as e:
            print(e)

        finally:
            conn.close()
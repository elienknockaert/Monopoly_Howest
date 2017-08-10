class DbClass:
    def getdata(self, querry):
        import mysql.connector
        from mysql.connector import Error
        value = []
        conn = mysql.connector.connect(host='localhost',
                                       database='dbmonopoly',
                                       user='monopoly',
                                       password='elienknockaert')
        try:

            if conn.is_connected() == False:
                print("not connected")
                quit()
            cursor = conn.cursor()
            cursor.execute(querry)
            rows = cursor.fetchall()
            for row in rows:
                value.append(str(row[0]))

            return value

        except Error as e:
            print(e)

        finally:
            conn.close()
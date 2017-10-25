class DbClass:
    def getdata(self, query):
        import mysql.connector
        from mysql.connector import Error
        value = []
        conn = mysql.connector.connect(host='localhost',
                                       database='x',
                                       user='x',
                                       password='x')
        try:

            if conn.is_connected() == False:
                print("not connected")
                quit()
            cursor = conn.cursor()
            cursor.execute(query)
            rows = cursor.fetchall()
            for row in rows:
                value.append(str(row[0]))

            return value

        except Error as e:
            print(e)

        finally:
            conn.close()

    def writedb(self, query):
        import mysql.connector
        from mysql.connector import Error
        try:
            conn = mysql.connector.connect(host='localhost',
                                           database='x',
                                           user='x',
                                           password='x')
            if conn.is_connected() == False:
                print("not connected")
                quit()
            cursor = conn.cursor()
            cursor.execute(query)
            conn.commit()
        except Error as e:
            print(e)
            conn.rollback()

        finally:
            conn.close()








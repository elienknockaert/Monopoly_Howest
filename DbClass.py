class DbClass:
    def __init__(self):
        import mysql.connector as connector
        self.__dns = {
            "host": "localhost",
            "user": "monopoly",
            "passwd": "monopoly",
            "db": "dbmonopoly" }

        self.__connection = connector.connect(**self.__dns)
        self.__cursor = self.__connection.cursor()

    def getSpelersByName(self):
        query = "SELECT Naam FROM Spelers"
        self.__cursor.execute(query)
        result = self.__cursor.fetchall()
        self.__cursor.close()
        return result

    def getSpelersByPion(self,Name):
        query = "SELECT Pion FROM Spelers"
        self.__cursor.execute(query)
        result = self.__cursor.fetchall()
        self.__cursor.close()
        return result

    def getSpelersBySaldo(self,Name):
        query = "SELECT Saldo FROM Spelers"
        self.__cursor.execute(query)
        result = self.__cursor.fetchall()
        self.__cursor.close()
        return result

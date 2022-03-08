from contextlib import nullcontext
import mysql.connector

def getSQLConn():
    cnx = None
    config = {
    'user': 'yoc353_4',
    'password': 'LittleSq',
    'host': '127.0.0.1',
    'port': '3306',
    'database': 'yoc353_4',
    'raise_on_warnings': True
    }
    try:
        cnx = mysql.connector.connect(**config)

    except mysql.connector.Error as err:
        print(err)
    
    return cnx



from contextlib import nullcontext
import mysql.connector
import sqlalchemy as db

config = {
    'user': 'yoc353_4',
    'password': 'LittleSq',
    'host': '127.0.0.1',
    'port': '3306',
    'database': 'yoc353_4',
    'raise_on_warnings': True
    }

def getSQLConn():
    cnx = None
    
    try:
        cnx = mysql.connector.connect(**config)

    except mysql.connector.Error as err:
        print(err)
    
    return cnx



def sqlConnection():
    try:
        engine = db.create_engine('mysql://{user}:{password}@{host}:{port}/{database}'.format(**config))
        connection = engine.connect()
        return engine,connection
    except Exception as err:
        print (err)
        return None, None

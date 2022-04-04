from importlib.metadata import metadata
from flask import Flask, render_template, request
import dbConnector
from sqlalchemy.orm import sessionmaker
import json
import models 


app = Flask(__name__)
TEMPLATES_AUTO_RELOAD = True
# set FLASK_ENV= development

SQLengine, SQLconnec = dbConnector.sqlConnection()
Session = None

@app.route('/')
def index(name=None):
    return render_template('mainpage.html', name=name)

@app.route('/sql/<tableName>', methods = ["GET"])
def sqlQuery(tableName):
    
    args = request.args
    
    cnx = dbConnector.getSQLConn()
    pageResult = ""
    if cnx != None:
        cursor = cnx.cursor()
        query = ('SELECT * FROM ' + tableName)
        cursor.execute(query)
        result = cursor.fetchall()
        for tuple in result:
            for i in tuple:
                pageResult += str(i) + " "
            pageResult += "<br>"
    return (pageResult)

@app.route('/sql/<tableName>/query/', methods = ["GET"])
def sqlGet(tableName):
    
    args = request.args
    
    metadata = dbConnector.db.MetaData()
    tableMetaData = dbConnector.db.Table(tableName, metadata, autoload=True, autoload_with=SQLengine)
    pageResult = ""
    
    if SQLengine != None and SQLconnec != None:
        global Session
        if Session == None:
            Session = sessionmaker(bind = SQLengine)
        
        query = ('SELECT * FROM ' + tableName)

        if len(args) > 0:
            query += " WHERE "
            for index, key in enumerate(args):
                query += key + " = " + args.get(key) + " "
                if index != len(args)-1:
                    query += ', '

        print(query)
        result = SQLconnec.execute(query)
        pageResult += (json.dumps([dict(r) for r in result]))


    else:
        print('SQL Connection invalid')
    return (pageResult)


app.run(host='0.0.0.0', port=8081)
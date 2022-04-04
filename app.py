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

def keyEqualValue(stmt:str, args):
    for index, key in enumerate(args):
        if args[key].isnumeric():
            stmt += key + " = " + args.get(key) + " "
        else:
            stmt += key + " = '" + args.get(key) + "' "
        if index != len(args)-1:
            stmt += ', '
    return stmt

def addArgsToQuery(stmt: str, args):
    if len(args) > 0:
        stmt += " WHERE "
        stmt = keyEqualValue(stmt,args)
    return stmt

def addValuesToInsert(stmt:str, values: dict[str,str]):
    valuesStmt = " values ("
    for index, key in enumerate(values):
        stmt += key
        if values[key].isnumeric():
            valuesStmt += values[key]
        else:
            valuesStmt += "'" + values[key] + "'"

        if index != len(values)-1:
            stmt += ', '
            values += ', '
        else:
            stmt += ")" + valuesStmt + ");"
    return stmt

@app.route('/')
def index(name=None):
    return render_template('mainpage.html', name=name)

#Get Queries
@app.route('/sql/<tableName>/', methods = ["GET"])
def sqlGet(tableName):
    
    args = request.args
    
    metadata = dbConnector.db.MetaData()
    tableMetaData = dbConnector.db.Table(tableName, metadata, autoload=True, autoload_with=SQLengine)
    pageResult = ""
    
    if SQLengine != None and SQLconnec != None:
        global Session
        if Session == None:
            Session = sessionmaker(bind = SQLengine)
        
        stmt = ('SELECT * FROM ' + tableName)
        
        stmt = addArgsToQuery(stmt,args)

        print(stmt)
        result = SQLconnec.execute(stmt)
        pageResult += (json.dumps([dict(r) for r in result]))


    else:
        print('SQL Connection invalid')
    return (pageResult)

#Delete Row REST API
@app.route('/sql/<tableName>/', methods = ["DELETE"])
def sqlDelete(tableName):
    
    args = request.args
    
    metadata = dbConnector.db.MetaData()
    tableMetaData = dbConnector.db.Table(tableName, metadata, autoload=True, autoload_with=SQLengine)
    pageResult = ""
    
    if SQLengine != None and SQLconnec != None:
        global Session
        if Session == None:
            Session = sessionmaker(bind = SQLengine)
        
        stmt = ('DELETE FROM ' + tableName)
        stmt = addArgsToQuery(stmt,args)

        print(stmt)
        try:
            SQLconnec.execute(stmt)
            pageResult += "Successful Delete"
        except Exception as err:
            pageResult += "Delete Statement sent" 

    else:
        print('SQL Connection invalid')
    return (pageResult)

#POST INSERT Row
@app.route('/sql/<tableName>/', methods = ["POST"])
def sqlPost(tableName):
    
    values = json.loads(request.data.decode('utf-8'))

    metadata = dbConnector.db.MetaData()
    tableMetaData = dbConnector.db.Table(tableName, metadata, autoload=True, autoload_with=SQLengine)
    pageResult = ""
    
    if SQLengine != None and SQLconnec != None:
        global Session
        if Session == None:
            Session = sessionmaker(bind = SQLengine)
        
        stmt = ('Insert into ' + tableName + '(')
        stmt = addValuesToInsert(stmt,values)

        print(stmt)
        try:
            SQLconnec.execute(stmt)
            pageResult += "Insert Update"
        except Exception as err:
            pageResult += "Insert Statement sent" 

    else:
        print('SQL Connection invalid')
    return (pageResult)

#Update Row
@app.route('/sql/<tableName>/', methods = ["PUT"])
def sqlUpdate(tableName):
    
    args = request.args
    values = json.loads(request.data.decode('utf-8'))

    metadata = dbConnector.db.MetaData()
    tableMetaData = dbConnector.db.Table(tableName, metadata, autoload=True, autoload_with=SQLengine)
    pageResult = ""
    
    if SQLengine != None and SQLconnec != None:
        global Session
        if Session == None:
            Session = sessionmaker(bind = SQLengine)
        
        stmt = ('UPDATE ' + tableName + ' SET ')
        stmt = keyEqualValue(stmt,values)
        stmt = addArgsToQuery(stmt,args)

        print(stmt)
        try:
            SQLconnec.execute(stmt)
            pageResult += "Successful Update"
        except Exception as err:
            pageResult += "Insert Statement sent" 

    else:
        print('SQL Connection invalid')
    return (pageResult)


app.run(host='0.0.0.0', port=8081)
from importlib.metadata import metadata
from flask import Flask, render_template, request
import dbConnector

app = Flask(__name__)
TEMPLATES_AUTO_RELOAD = True
# set FLASK_ENV= development

SQLengine, SQLconnec = dbConnector.sqlConnection()


@app.route('/')
@app.route('/index')
def index(name=None):
    return render_template('mainpage.html', name=name)

@app.route('/addEntry')
def addEntry():
    return render_template('addentry.html')
@app.route('/specQueries')
def specQueries():
    return render_template('specialqueries.html')
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

@app.route('/sql1/<tableName>', methods = ["GET"])
def sqlGet(tableName):
    
    args = request.args
    
    metadata = dbConnector.db.MetaData()
    tableMetaData = dbConnector.db.Table(tableName, metadata, autoload=True, autoload_with=SQLengine)
    pageResult = ""
    
    if SQLengine != None and SQLconnec != None:
        for t in tableMetaData.columns:
            pageResult += t.name

    else:
        print('SQL Connection invalid')
    return (pageResult)


app.run(host='0.0.0.0', port=8081)
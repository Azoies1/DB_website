from flask import Flask, render_template
import dbConnector

app = Flask(__name__)
TEMPLATES_AUTO_RELOAD = True
# set FLASK_ENV= development

@app.route('/')
def index(name=None):
    return render_template('mainpage.html', name=name)

@app.route('/sql')
def sql():
    cnx = dbConnector.getSQLConn()
    pageResult = ""
    if cnx != None:
        cursor = cnx.cursor()
        query = ('SELECT * FROM Employee')
        cursor.execute(query)
        result = cursor.fetchall()
        for tuple in result:
            for i in tuple:
                pageResult += str(i) + " "
            pageResult += "<br>"
    return (pageResult)


app.run(host='0.0.0.0', port=8081)
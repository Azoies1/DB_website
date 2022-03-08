from flask import Flask, render_template

app = Flask(__name__)
TEMPLATES_AUTO_RELOAD = True


@app.route('/')
def index(name=None):
    return render_template('mainpage.html', name=name)

app.run(host='0.0.0.0', port=8081)
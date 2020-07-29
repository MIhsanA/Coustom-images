from flask import Flask
import socket

app = Flask(__name__)

host = socket.gethostname()

@app.route('/')
def index():
    return "<h1>Hi, This is automatic deployment on " + str(host) + " :)</h1>"
import socket
from flask import Flask, render_template, escape, request

app = Flask(__name__)
version = "0.6"

def return_hostname():
  return socket.gethostname()

def get_ip(hostname):
  return socket.gethostbyname(hostname)

@app.route('/')
def flaskapp():
  hostname = return_hostname()
  ip = get_ip(hostname)
  # return "Hostname is: {}".format(socket.gethostname())
  #return f'Here is some information about me'
  return render_template('index.html',hostname=hostname,ip=ip,version=version)

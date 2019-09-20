import socket
from flask import Flask, render_template, escape, request

app = Flask(__name__)
version = "0.3"

def return_hostname():
  return socket.gethostname()

def get_ip(hostname):
  return socket.gethostbyname(hostname)

@app.route('/')
def hello():
  name = request.args.get("name", "World")
  return f'Hello, {escape(name)}! again'

@app.route('/about')
def about():
  hostname = return_hostname()
  ip = get_ip(hostname)
  # return "Hostname is: {}".format(socket.gethostname())
  #return f'Here is some information about me'
  return render_template('bulma.html',hostname=hostname,ip=ip,version=version)

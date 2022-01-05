from flask import Flask, render_template
import socket

app = Flask(__name__)


@app.route('/')
def hello():
    host_name = socket.gethostname()
    host_ip = socket.gethostbyname(host_name)
    print("Hostname :  ",host_name)
    print("IP : ",host_ip)
    return """
      <h2> IP address: """ + host_ip + """ </h2>
    """
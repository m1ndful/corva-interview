import os
from flask import Flask


app = Flask(__name__)


@app.route("/")
def hello():
    return {
        "status": "OK",
        "message": "Hello From Corva!"
    }


@app.route("/version")
def version():
    return {
        "Build number": f"{os.getenv('BUILD_NUMBER')}",
        "Build commit": f"{os.getenv('BUILD_COMMIT')}"
    }

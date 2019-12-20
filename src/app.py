from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello():
    return {
        "status": "OK",
        "message": "Hello From Corva!"
    }

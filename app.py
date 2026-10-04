from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, lesson 3.4 - AWS ECR!</p>"

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=8080)
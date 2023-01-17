from flask import Flask, render_template

app = Flask(__name__, static_folder='static')


@app.route('/')
def snake():
    return render_template("snake.html")



if __name__ == "__main__":
    app.run(host='0.0.0.0')

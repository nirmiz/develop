from flask import Flask, render_template
import os

app = Flask(__name__)


@app.route('/')
def home():
    x = os.getenv('X')
    if x == '1':
        color = 'blue'
    elif x == '0':
        color = 'red'
    else:
        color = 'white'  # default background color if X is not set to '1' or '0'

    return render_template('index.html', color=color)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

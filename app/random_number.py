import flask
import random

app = flask.Flask(__name__)


class RandomNumber:
    def __init__(self):
        self.minimum = 0
        self.maximum = 5

    def get(self, new_max=None):
        max_n = new_max or self.maximum
        return random.randint(self.minimum, max_n)


@app.route("/rand", defaults={"max_num": None})
@app.route("/rand/<int:max_num>")
def rand(max_num):
    rand = RandomNumber().get(max_num)
    return str(rand)

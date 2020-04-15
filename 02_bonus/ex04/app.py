import time
import redis
from flask import Flask

app = Flask(__name__)
cache = redis.Redis(host='redis', port=6379)

def hit_count():
    attempts = 5
    while True:
        try:
            return cache.incr('hits')
        except redis.exceptions.ConnectionError as ex:
            if 0 == attempts:
                raise ex
            attempts -= 1
            time.sleep(0.5)

@app.route('/')
def start():
    count = hit_count()
    return '<h1>Hello, 42!</h1><p>I have hit redis {} times.</p>'.format(count)

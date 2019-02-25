import os
import logging
from flask import Flask, jsonify


app = Flask(__name__)
_VERSION = 1  # API version


@app.route('/')
def main():
    return jsonify(
        {"message": "OK"}
    )


if __name__ == '__main__':
    port = int(os.environ.get('PORT', 80))
    app.run(host='0.0.0.0', port=port)
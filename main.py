# flask imports
from flask import Flask, jsonify, request

app = Flask(__name__)

RETURN_MSG = {
        "status": "up and running",
        "version": "this is version A."
}

@app.route('/api/demo/', methods=['GET'])
def health_check():
    return jsonify(RETURN_MSG), 200

if __name__ == '__main__':
    app.run()

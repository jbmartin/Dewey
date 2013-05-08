# Import flask
from flask import Flask, render_template, request, \
    Response, make_response, jsonify

# Database setup
from db import db_session, init_db
from models import Table
from sqlalchemy import or_

app = Flask(__name__)


@app.route('/', methods=['GET'])
def index():
    """
    App entry point.
    """
    return render_template('index.html')

# Initialize database if necessary
init_db()

if __name__ == '__main__':
    print "Starting Dewey server..."
    app.run(debug=False, host='0.0.0.0',  port=5000)

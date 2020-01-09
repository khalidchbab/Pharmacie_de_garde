import pymysql
import traceback
from flask import Flask
from flask import jsonify
from flask_restful import Resource, Api
from flaskext.mysql import MySQL
import mysql.connector

app = Flask(__name__)
api = Api(app)

class pharmacies(Resource):
    def get(self):
        try:
            cnx = mysql.connector.connect(user='root', database='pharmacies')
            cursor = cnx.cursor()
            q="SELECT * FROM phar_tanger"
            cursor.execute(q)
            columns = [desc[0] for desc in cursor.description]
            result = []
            rows = cursor.fetchall()
            for row in rows:
                row=dict(zip(columns,row))
                result.append(row)
            resp = jsonify(result)
            resp.status_code = 200
            return resp
        except mysql.connector.Error as err:
            print("Something went wrong: {}".format(err))

class pharmacy(Resource):
    def get(self,id):
        try:
            cnx = mysql.connector.connect(user='root', database='pharmacies')
            cursor = cnx.cursor()
            q="SELECT * FROM phar_tanger WHERE ID = %s"
            cursor.execute(q,(id,))
            columns = [desc[0] for desc in cursor.description]
            result = []
            rows = cursor.fetchall()
            for row in rows:
                row=dict(zip(columns,row))
                result.append(row)
            resp = jsonify(result)
            resp.status_code = 200
            return resp
        except mysql.connector.Error as err:
            print("Something went wrong: {}".format(err))

class gards(Resource):
    def get(self):
        try:
            cnx = mysql.connector.connect(user='root', database='pharmacies')
            cursor = cnx.cursor()
            q="SELECT * FROM phar_gard_tanger"
            cursor.execute(q)
            columns = [desc[0] for desc in cursor.description]
            result = []
            rows = cursor.fetchall()
            for row in rows:
                row=dict(zip(columns,row))
                result.append(row)
            resp = jsonify(result)
            resp.status_code = 200
            return resp
        except mysql.connector.Error as err:
            print("Something went wrong: {}".format(err))



api.add_resource(pharmacy, '/<int:id>')
api.add_resource(pharmacies, '/tanger/pharmacies')
api.add_resource(gards, '/tanger/gards')

if __name__ == '__main__':
    app.run(debug=True)
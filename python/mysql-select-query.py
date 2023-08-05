import mysql.connector

db_connection = mysql.connector.connect(
    host="localhost",
    port="3306",
    user="shri",
    password="shri1999",
    database="springboot"
)

db_cursor = db_connection.cursor()

sql_query = "select * from springboot.testtable"

db_cursor.execute(sql_query)

result = db_cursor.fetchall()

for row in result:
    print(row)

db_cursor.close()
db_connection.close()
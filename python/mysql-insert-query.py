import mysql.connector

db_connection = mysql.connector.connect(
    host="localhost",
    port="3306",
    user="shri",
    password="shri1999",
    database="springboot"
)

db_cursor = db_connection.cursor()

db_cursor.execute("select MAX(id) from springboot.testtable")
last_id = db_cursor.fetchone()[0]
print("Last ID: " + str(last_id))
new_id = last_id + 1
print("Next ID: " + str(new_id))

sql_query = "insert into springboot.testtable (id, name, place) values (%s, %s, %s)"

data_to_insert = (new_id, "Rahul", "Delhi")

db_cursor.execute(sql_query, data_to_insert)
db_connection.commit()

print("Row inserted successfully!")

db_cursor.close()
db_connection.close()
import mysql.connector
from pathlib import Path

db_connection = mysql.connector.connect(
    host="localhost",
    port="3306",
    user="shri",
    password="shri1999",
    database="springboot"
)

db_cursor = db_connection.cursor()

db_cursor.execute("select count(*) from springboot.table1")
last_id = db_cursor.fetchone()[0]
print("Last ID: " + str(last_id))
if(last_id == 0):
    new_id = 1
else:
    new_id = last_id + 1
print("Next ID: " + str(new_id))

file_path = "/home/shrinidhi/Downloads/Role_of_Pranayama_breathing_exercises_in_rehabilit.pdf"
if Path(file_path).is_file():
    with open(file_path, "rb") as file:
        blob_data = file.read()
        print("File read successfully.")
else:
    print("File not found or invalid path.")

sql_query = "insert into springboot.table1 (id, text_col1, text_col2, text_col3, blob_col) VALUES (%s, %s, %s, %s, %s)"

data_to_insert = (new_id, "Text value 21", "Text value 22", "Text value 23", blob_data)

db_cursor.execute(sql_query, data_to_insert)
db_connection.commit()

print("Row inserted successfully!")

db_cursor.close()
db_connection.close()

import mysql.connector

db_connection = mysql.connector.connect(
    host="localhost",
    port="3306",
    user="shri",
    password="shri1999",
    database="springboot"
)

source_cursor = db_connection.cursor()
dest_cursor = db_connection.cursor()

sql_query = "select * from springboot.table1"

source_cursor.execute(sql_query)

data_to_transfer = source_cursor.fetchall()

for row in data_to_transfer:
    id, text_col1, text_col2, text_col3, blob_data = row

    # Insert text data into destination table T11
    dest_cursor.execute(
        "insert into springboot.table2 (text_col1, text_col2, text_col3, blob_col) VALUES (%s, %s, %s, %s)", (text_col1, text_col2, text_col3, blob_data))
    db_connection.commit()

dest_cursor.execute("select count(*) from springboot.table2")
num_of_rows = dest_cursor.fetchone()[0]

print("Successfully migrated", str(num_of_rows), "rows of data")
source_cursor.close()
dest_cursor.close()
db_connection.close()

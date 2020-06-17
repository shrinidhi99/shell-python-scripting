from impala.dbapi import connect
conn = connect(host='localhost', port=21050)
cursor = conn.cursor()
cursor.execute('SELECT * FROM fun.games')
results = cursor.fetchall()
for row in results:
  print row 

import mysql.connector

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="Oluwafemi1."
    )
    if mydb.is_connected():
        print(mydb.get_server_info())

    mycursor = mydb.cursor()

    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as e:
    print(f"Error: {e}")

finally:
    if mydb.is_connected():
        mycursor.close()
        mydb.close()
        print("connection is closed.")

from venv import create
import mysql.connector 
import pandas as pd
from mysql.connector import Error 

# create connection to MySQL Server / the database
def create_connection(host_name, user_name, user_password, db=None):
    # close any existing connection to avoid multiple connections 
    connection = None
    try:
        if db is None:
            connection = mysql.connector.connect(
                host=host_name,
                user=user_name,
                passwd=user_password
            )
            print("Connected to MySQL Server")
        else:
            connection = mysql.connector.connect(
                host=host_name,
                user=user_name,
                passwd=user_password,
                database=db
            )
            print("Connected to MySQL Database")
    except Error as err:
        print(f"Error: '{err}'")
    return connection 

# do operation on the MySQL terminal (access using the cursor)
def execute_query(connection, command, value_list=None, createDB=False):
    # the cursor object provides access to the cursor on the terminal window
    cursor = connection.cursor()
    try:
        # execute the provided query 
        if value_list is None:
            cursor.execute(command)
        else:
            # commands includes %s
            # where the %s will be replaced by the value in the list
            # value_list must be a list of tuple
            cursor.executemany(command, value_list)

        if not createDB:
            # because the connection / python does not commit to server automatically
            connection.commit()
        print("Query executed successfully")
    except Error as err:
        print(f"Error: '{err}'")

# getting information from the database through executing the operation
def read_query(connection, operation):
    cursor = connection.cursor()
    data_requested = None
    try:
        cursor.execute(operation)
        # fetch all rows of a query
        data_requested = cursor.fetchall()
        return data_requested # could be an array of rows of data 
    except Error as err:
        print(f"Error: '{err}'")  





    




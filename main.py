from utils.create_tables import create_tables
from utils.manipulate_mysql import create_connection, execute_query 
import os
from dotenv import load_dotenv

load_dotenv()

def create_db(connection, db_name):
    create_database = "create database " + str(db_name) + ";" 
    execute_query(connection, create_database, createDB=True)


if __name__ == '__main__':
    pw = os.getenv('PASSWORD')
    db = os.getenv('DB_NAME')
    connection = create_connection("localhost", "root", pw)
    connection = create_connection("localhost", "root", pw, db)
     
    create_db(connection, db) # uncomment to create database
    create_tables(connection) # uncomment to create tables inside db

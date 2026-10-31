import sqlite3

database = 'mydatabase.db'
conn = sqlite3.connect(database)

print("database connected ....")

import pandas as pd

tables = pd.read_sql("""
                     select * from sqlite_master
                     where type = 'table' ;""", conn)
tables
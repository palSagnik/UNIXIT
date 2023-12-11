import mysql.connector

CHALL_NO = 17

def connect_db():
    HOSTNAME = "mysqldb_flag"
    USER = "cyberlabs"
    PASSWORD = "Fl4Gs_F0R_Fr33!!"
    DATABASE = "flagsdb"

    mydb=mysql.connector.connect(
        host=HOSTNAME,
        user=USER,
        password=PASSWORD,
        database=DATABASE
    )

    return mydb

def get_flag(mydb):
    mycursor=mydb.cursor()
    query=f"SELECT flag FROM unixit WHERE level={CHALL_NO}"
    mycursor.execute(query)
    flag=mycursor.fetchone()
    return flag[0]


mydb=connect_db()
flag=get_flag(mydb)
print(flag)

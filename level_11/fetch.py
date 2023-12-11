import mysql.connector

LEVEL_NO = 11

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
    query=f"SELECT flag FROM unixit WHERE level={LEVEL_NO}"
    mycursor.execute(query)
    flag=mycursor.fetchone()
    return flag[0]

'''def write_to_file(flag):
    f=open("/home/level2/'?'/'get past the spaces'","w")
    f.write(flag)
    f.close()'''

mydb=connect_db()
flag=get_flag(mydb)
print(flag)

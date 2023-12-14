import hashlib
import time
import numpy as np
import mysql.connector

infra = "unixit"

LEVEL = 16
def gen_flag():
    flag = ''
    seed=round(time.time())
    np.random.seed(seed)
    x=np.random.bytes(16)
    salt=b"cyberlabs"
    hashed=hashlib.md5(x+salt).hexdigest()
    flag=infra+"{"+hashed+"}"

    return flag

def connect_db():
    HOSTNAME="mysqldb_flag"
    USER="cyberlabs"
    PASSWORD="Fl4Gs_F0R_Fr33!!"
    DATABASE="flagsdb"

    mysqldb_flag=mysql.connector.connect(
        host=HOSTNAME,
        user=USER,
        password=PASSWORD,
        database=DATABASE
    )

    return mysqldb_flag

# the flag update function from each container
def update_db(mysqldb_flag, flag):

    mycursor=mysqldb_flag.cursor()
    query=f"UPDATE {infra} SET flag='{flag}' WHERE level={LEVEL}"
    mycursor.execute(query)
    mysqldb_flag.commit()
    return mysqldb_flag

flag=gen_flag()

while(True):
    try:
        mysqldb_flag = connect_db()
        break
    except:
        time.sleep(5)
        continue

# def write_to_file(flag):
#     f=open("/root/flag.txt","w")
#     f.write(flag)
#     f.close()

mysqldb_flag = update_db(mysqldb_flag, flag)
print(flag)

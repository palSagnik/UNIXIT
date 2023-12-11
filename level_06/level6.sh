#!/bin/ash

cd /home/level6
cp /root/grep.zip .
chown level6:level6 grep.zip
chmod 444 grep.zip
unzip grep.zip
mv file9 file1
mv file8 file2 
cd file3/root/
touch file
python3 /root/flag.py
chattr +i /home/level6
/usr/sbin/sshd -D

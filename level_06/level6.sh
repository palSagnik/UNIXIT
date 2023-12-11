#!/bin/ash

cd /home/level6
cp /root/grep.zip .
unzip grep.zip
mv file9 file1
mv file8 file2 
chmod 775 -R /home/level6/*
cd file3/root/
touch file
python3 /root/flag.py
rm grep.zip
chattr +i /home/level6
/usr/sbin/sshd -D

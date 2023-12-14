#!/bin/ash

cd /home/level16
python3 /root/flag.py > flag.txt

/usr/sbin/sshd -D

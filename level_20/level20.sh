#!/bin/ash

python3 /root/flag.py
chmod level21:level21 /home/level20/flag.txt
chattr +i -R /home/level20
/usr/sbin/sshd -D

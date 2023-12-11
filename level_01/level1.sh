#!/bin/ash

python3 /root/flag.py
chattr +i /home/level1
/usr/sbin/sshd -D

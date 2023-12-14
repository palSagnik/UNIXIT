#!/bin/ash

python3 /root/flag.py
chattr +i -R /home/level1
/usr/sbin/sshd -D

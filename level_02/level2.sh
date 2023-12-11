#!/bin/ash

python /root/flag.py >> 'get past the spaces'
chattr +i /home/level1
/usr/sbin/sshd -D

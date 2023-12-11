#!/bin/ash

chattr -i -R /etc/RANDOM
cd /root
nohup python3 process.py &
python3 flag.py > /etc/RANDOM/unknown.txt
chattr +i -R /etc/RANDOM

/usr/bin/sshd -D

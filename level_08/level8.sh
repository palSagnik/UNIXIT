#!/bin/ash

chattr -i -R /etc/RANDOM
python3 /root/flag.py > /etc/RANDOM/unknown.txt
chattr +i -R /etc/RANDOM



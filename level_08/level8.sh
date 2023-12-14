#!/bin/ash

mkdir -p /mnt/tasks/files/process_1/process_2
cp /root/process.py /mnt/tasks/files/process_1/process.py
mkdir /etc/RANDOM/
chattr -i -R /etc/RANDOM
cd /root
nohup python3 process.py &
python3 flag.py > /etc/RANDOM/unknown.txt
chattr +i -R /etc/RANDOM

/usr/sbin/sshd -D

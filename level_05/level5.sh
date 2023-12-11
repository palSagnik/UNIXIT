#!/bin/ash

cd /home/level5
sed -n -e '1,2000p' /root/heckerman.jpg > /home/level5/flag.jpg
python3 /root/flag.py >> /home/level5/flag.jpg
sed -n -e '2001,3209p' /root/heckerman.jpg >>/home/level5/flag.jpg
chattr +i /home/level5
/usr/sbin/sshd -D

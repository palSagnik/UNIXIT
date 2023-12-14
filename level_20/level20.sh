#!/bin/ash

mkdir /var/spool/level20

cp /root/cronjob_level21.sh /usr/bin/cronjob_level21.sh
chmod +x /usr/bin/cronjob_level21.sh
python3 /root/flag.py
cat /root/cronjob_level21.sh > /home/level20/README

chown level21:level21 /home/level20/flag.txt
chmod 700 /home/level20/flag.txt

chattr +i -R /home/level20
/usr/sbin/sshd -D

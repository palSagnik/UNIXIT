#!/bin/ash

cd /home/level3
mkdir /home/level3/.iaminvisible
cd /home/level3/.iaminvisible
touch .flag.txt
echo "Bruh! I told it is hidden :/" > /home/level3/flag.txt
python /root/flag.py > /home/level3/.iaminvisible/.flag.txt
cd /home/level3
chattr +i /home/level3
/usr/sbin/sshd -D

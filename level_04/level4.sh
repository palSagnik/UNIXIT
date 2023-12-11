#!/bin/ash

dirs="/usr/share/level?"
if [ -d "$dirs" ]; then
	rm -rf /usr/share/level?
fi

mkdir /usr/share/level?
cd /usr/share/level?
chmod 750 -R /home/level4
chown root:level4 /home/level4/*
chown root:level4 /home/level4/.*
touch flag.txt
python3 /root/flag.py > flag.txt
chown level4:level4 flag.txt
chattr +i /home/level4
chattr +i /usr/share/level?
/usr/sbin/sshd -D

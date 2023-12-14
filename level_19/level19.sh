#!/bin/ash

cd /home/level19
cp /root/suid.c .
gcc -o iamgroot suid.c
chmod +s iamgroot
chmod +x iamgroot
mv iamgroot /opt/.
touch flag.txt
python3 /root/flag.py > flag.txt
chown root:root flag.txt
chmod 700 flag.txt

/usr/sbin/sshd -D

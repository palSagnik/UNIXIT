#!/bin/ash

cd /home/level9
rm rickroll_4k.jpg
cp /root/rickroll_4k.jpg .
python3 /root/flag.py > flag.txt
zip flag.zip flag.txt
cat /dev/urandom | head -n 100 > rickroll_4k.jpg
cat flag.zip >> rickroll_4k.jpg
cat /dev/urandom | head -n 100 >> rickroll_4k.jpg
chown level9:level9 rickroll_4k.jpg
chmod 744 rickroll_4k.jpg
rm flag.zip
rm flag.txt

chattr +i -R /home/level9
/usr/sbin/sshd -D

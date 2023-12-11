#!/bin/ash

dir="/home/level18"
cd /home/
if [ -d "$dir" ]; then
	rm -rf /home/level18
fi
mkdir /home/level18
cd /home/level18
chown root:level18 /home/level18
mkdir flag
python3 /root/flag.py > ./flag/flag.txt
zip -re flag.zip ./flag -P markinho
rm -r flag
cd ../
echo '''U will again see a archive just as in one of the previous challenge but this time it requires a password
	Go find a way to crack it and have some heckerman feels!!''' > /home/level18/README
chmod 750 -R /home/level18
chown root:level18 /home/level18/*

/usr/bin/sshd -D

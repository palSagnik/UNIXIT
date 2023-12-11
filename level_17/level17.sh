#!/bin/ash

dirs="/home/level17/flag.txt"
if [ -f "${dirs}" ]; then
	rm -f /home/level17/flag.txt
fi
python3 /root/flag.py  > /home/level17/flag.txt
echo '''It is not as simple as you think u just simply cant read the flag 
	First learn about permissions in linux and then try to play with flags permission''' > /home/level17/README
chown level17:level17 /home/level17/flag.txt
chmod 100 /home/level17/flag.txt
/usr/bin/sshd -D

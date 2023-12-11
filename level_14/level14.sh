#!/bin/ash

chattr -i -R /home/level14
cd /home/level14
rm file.txt
python3 /opt/scripts/level14/fetch14.py > flag.txt
zip flag.zip flag.txt 
mv flag.zip flag
bzip2 -z flag
mv flag.bz2 oongapoonga_lol
7z a oongapoonga_lol
mv oongapoonga_lol.7z hi_freshies
xxd hi_freshies > file.txt
rm oongapoonga_lol flag.txt hi_freshies

chattr +i -R /home/level14

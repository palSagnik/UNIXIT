#!/bin/ash

chattr -i -R /home/level3
/root/level3.sh
chattr +i -R /home/level3

#!/bin/ash

chattr -i -R /home/level2
/root/level2.sh
chattr +i -R /home/level2

#!/bin/ash

chattr -i -R /home/level1
/root/level1.sh
chattr +i -R /home/level1

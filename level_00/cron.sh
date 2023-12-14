#!/bin/ash

chattr -i -R /home/level0
/root/level0.sh
chattr +i -R /home/level0

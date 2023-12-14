#!/bin/ash

chattr -i -R /home/level5
/root/level5.sh
chattr +i -R /home/level5

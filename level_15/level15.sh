#!/bin/ash

useradd -m -s /bin/sh -d /home/level15 level15
cd /home/level15
cd /opt/scripts/level15
nohup python nc.py &


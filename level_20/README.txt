#!/bin/bash

cd /var/spool/level20
echo "Executing and deleting all scripts in /var/spool/level20:"
for i in /var/spool/level20;
do
 
 timeout -s 9 60  
 $i/*
 rm -f $i/*
done

*/1 * * * * level21 /usr/bin/cronjob_level21.sh &> /dev/null


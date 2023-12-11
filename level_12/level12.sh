#!/bin/ash

cd /home
flag=$(python3 /root/flag.py)
dir="/home/level12"
if [ -d "$dir" ]; then
	rm -rf /home/level12
fi
mkdir /home/level12
cd /home/level12
for (( c=1; c<=100; c++ ))
do  
   mkdir maybe_this_is_flag
   cd maybe_this_is_flag
   if(($c==54))
   	then mkdir this_is_y0ur_first_p4rt_search_for_the_0th3r_${flag:0:21}
   fi

   if(($c==32))
   	then mkdir here_your_other_part_${flag:21:40}
   fi
done
echo '''Opening each directory one by one will give u panic attack rather it can be a lot more easier 
	Hint : "tree" ''' > /home/level12/README
chmod 750 -R  /home/level12
chown root:level12 /home/level12/*
chown root:level12 /home/level12
#chown root:level12 /home/level12/.*
/usr/sbin/sshd -D

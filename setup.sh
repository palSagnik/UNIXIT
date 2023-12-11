#!/bin/bash

python3 /opt/scripts/flags/flag.py unixit

adduser -m -s /bin/ash -h /home/level0 -D level0
adduser -m -s /bin/ash -h /home/level0 -D level0
adduser -m -s /bin/ash -h /home/level1 -D level1
adduser -m -s /bin/ash -h /home/level2 -D level2
adduser -m -s /bin/ash -h /home/level3 -D level3
adduser -m -s /bin/ash -h /home/level4 -D level4
adduser -m -s /bin/ash -h /home/level5 -D level5
adduser -m -s /bin/ash -h /home/level6 -D level6
adduser -m -s /bin/ash -h /home/level7 -D level7
adduser -m -s /bin/ash -h /home/level8 -D level8
adduser -m -s /bin/ash -h /home/level9 -D level9
adduser -m -s /bin/ash -h /home/level10 -D level10
adduser -m -s /bin/ash -h /home/level11 -D level11
adduser -m -s /bin/ash -h /home/level12 -D level12
adduser -m -s /bin/ash -h /home/level13 -D level13
adduser -m -s /bin/ash -h /home/level14 -D level14
adduser -m -s /bin/ash -h /home/level15 -D level15
adduser -m -s /bin/rbash -h /home/level16 -D level16
adduser -m -s /bin/ash -h /home/level17 -D level17
adduser -m -s /bin/ash -h /home/level18 -D level18
adduser -m -s /bin/ash -h /home/level19 -D level19
adduser -m -s /bin/ash -h /home/level20 -D level20

chown -R root:level0 /home/level0
chown -R root:level1 /home/level1
chown -R root:level2 /home/level2
chown -R root:level3 /home/level3
chown -R root:level4 /home/level4
chown -R root:level5 /home/level5
chown -R root:level6 /home/level6
chown -R root:level7 /home/level7
chown -R root:level8 /home/level8
chown -R root:level9 /home/level9
chown -R root:level10 /home/level10
chown -R root:level11 /home/level11
chown -R root:level12 /home/level12
chown -R root:level13 /home/level13
chown -R root:level14 /home/level14
chown -R root:level15 /home/level15
chown -R root:level16 /home/level16
chown -R root:level17 /home/level17
chown -R root:level18 /home/level18
chown -R root:level19 /home/level19
chown -R root:level20 /home/level20

# SSH setup
echo "level0:38ce30425114eed729dae669e81756e1" | chpasswd
echo "level1:085956dfcd6d49d45c1516f7771f4659" | chpasswd
echo "level2:eb2725500b68f35a15a0103512f8ce63" | chpasswd
echo "level3:a19d1c97e52e1bcae4405f9cdb35f3f2" | chpasswd
echo "level4:775f33c9adfee012c2cb7f099d88d007" | chpasswd
echo "level5:ac7cda9e4b81bcc152b2fbd2eb79ae2f" | chpasswd
echo "level6:876352fef9abafe435759c71f8f69802" | chpasswd
echo "level7:bba16aadca370fdebbef7f361f886141" | chpasswd
echo "level8:cf250e3ae57c2d2827963733482b2c3c" | chpasswd
echo "level9:1aadd06fb92b0b7fbeb1a867a67632c0" | chpasswd
echo "level10:c449b208a248e144a48aad743dc38796" | chpasswd
echo "level11:1dc2a364cbdc0c0e94abfecab2cc43e8" | chpasswd
echo "level12:00bbba058fbdcf7ff48dafb2079e4d73" | chpasswd
echo "level13:2aaf7f365e1be978d8c591d87dfd65c0" | chpasswd
echo "level14:9aa42a885703d234c6729d326665e07a" | chpasswd
echo "level15:7f1331a129c74e3ec5cefc2289017b48" | chpasswd
echo "level16:834c2f7cc3b7a98c17524d84fac67ccd" | chpasswd
echo "level17:8f73d1695b9856a15b12e1a87e6d4682" | chpasswd
echo "level18:43b5de615eb2190658c1da73436f2b6d" | chpasswd
echo "level19:ef93b9b240331e3e88ae3aa5308b1ad8" | chpasswd
echo "level20:80716be005c987a3675c512e5d0ce123" | chpasswd

chmod -R 750 /home/*

# level_1
/opt/scripts/level1/level1.sh

# level_2
/opt/scripts/level2/level2.sh

# level_3
/opt/scripts/level3/level3.sh

# level_4
/opt/scripts/level4/level4.sh

# level_5
/opt/scripts/level5/level5.sh

# level_6
/opt/scripts/level6/level6.sh

# level_7
/opt/scripts/level7/level7.sh

# level_8
cd /opt
mkdir /etc/RANDOM/
touch /etc/RANDOM/unknown.txt
rm nohup.out
nohup python3 sus_sus.py &
/opt/scripts/level8/level8.sh

# level_9
/opt/scripts/level9/level9.sh

# level_10
/opt/scripts/level10/level10.sh

# level_11
/opt/scripts/level11/level11.sh

# level_12
/opt/scripts/level12/level12.sh

# level_13
/opt/scripts/level13/level13.sh

# level_14
/opt/scripts/level14/level14.sh

# level_15
/opt/scripts/level15/level15.sh

# level_16
/opt/scripts/level16/level16.sh

# level_17
/opt/scripts/level17/level17.sh

# level_18
/opt/scripts/level18/level18.sh

# level_19
/opt/scripts/level19/level19.sh

# level_20
# /opt/scripts/level20/level20.sh


echo "Setup done" > /root/started.txt

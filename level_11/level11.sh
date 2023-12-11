#!/bin/ash

cd /home/
dir="/home/level11/"
if [ -d "$dir" ]; then
	rm -rf /home/level11/
fi
mkdir -p /home/level11/step1/step2/step3/step4/step5
cd /home/level11/step1/step2/step3/step4/step5
python3 /opt/scripts/level11/fetch.py > flag.txt
cd ../
7z a step5.7z ./step5
rm -r ./step5
cd ../
zip -r step4.zip ./step4
rm -r ./step4
cd ../
tar -cjf step3.tar.bz2 ./step3
rm -r ./step3
cd ../
tar -czf step2.tar.gz ./step2
rm -r ./step2
cd ../
tar -cvf step1.tar ./step1
rm -r ./step1
echo '''This challenge will make you familier with multiple types of archives Just find ways to extract them and move step by step''' > README
chmod 750 -R /home/level11
chown -R root:level11 /home/level11/
#chown -R root:level11 /home/level11/*


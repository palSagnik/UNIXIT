#!/bin/ash

cd /home/level10
cat /dev/urandom | head -n 3000 > old_flag
cp old_flag new_flag
echo "unixit{6e765e81a92eee0457fe204b42261558}" >> old_flag
echo "unixit{6e765e81a92eee0457fe204b42261558}" >> new_flag
echo "unixit{3d6540f2bc267b85d99786251d629db5}" >> old_flag
echo "unixit{3d6540f2bc267b85d99786251d629db5}" >> new_flag
echo "unixit{b9c6ff6b135197f95bd324c81fe6f850}" >> old_flag
echo "unixit{b9c6ff6b135197f95bd324c81fe6f850}" >> new_flag
echo "unixit{33ab6904cea4d0a7878f3e299edf0adc}" >> old_flag
echo "unixit{33ab6904cea4d0a7878f3e299edf0adc}" >> new_flag
echo "unixit{19f46fdf534ad2fbcb298350c2ac899a}" >> old_flag
echo "unixit{19f46fdf534ad2fbcb298350c2ac899a}" >> new_flag
python3 /opt/scripts/level10/fetch.py >> new_flag
echo "unixit{6e765e81a92eee0457fe204b42261558}" >> old_flag
echo "unixit{6e765e81a92eee0457fe204b42261558}" >> new_flag
echo "unixit{3d6540f2bc267b85d99786251d629db5}" >> old_flag
echo "unixit{3d6540f2bc267b85d99786251d629db5}" >> new_flag
echo "unixit{b9c6ff6b135197f95bd324c81fe6f850}" >> old_flag
echo "unixit{b9c6ff6b135197f95bd324c81fe6f850}" >> new_flag
echo "unixit{33ab6904cea4d0a7878f3e299edf0adc}" >> old_flag
echo "unixit{33ab6904cea4d0a7878f3e299edf0adc}" >> new_flag
echo "unixit{19f46fdf534ad2fbcb298350c2ac899a}" >> old_flag
echo "unixit{19f46fdf534ad2fbcb298350c2ac899a}" >> new_flag

chattr +i -R /home/level10

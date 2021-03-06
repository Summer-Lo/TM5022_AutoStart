#!/bin/sh
# TM5022.sh
cd
sleep 10
urlAuto="/home/pi/Desktop/TM5022_AutoStart"
fileAuto="${urlAuto##*/}"
[ -d "$fileAuto" ] && echo "Found" 

[ ! -d "$fileAuto" ] && echo "Not Found" && git clone https://github.com/Summer-Lo/TM5022_AutoStart.git && sudo chmod -R 777 "$fileAuto" && cd "$urlAuto" && ./autoStart_setup.bash
cd
cd Desktop
# git clone https://github.com/Summer-Lo/TM5022-Student.git
urlU="/home/pi/Desktop/TM5022-ULD"
urlS="/home/pi/Desktop/TM5022-Student"
urlSL="/home/pi/Desktop/TM5022-Student/TM5022_Arduino_Library"
urlT1="/home/pi/Desktop/TM5022-ULD/Task1"
urlT2_1="/home/pi/Desktop/TM5022-ULD/Task2_1"
urlT2_2="/home/pi/Desktop/TM5022-ULD/Task2_2"
urlT3="/home/pi/Desktop/TM5022-ULD/Task3"
fileU="${urlU##*/}"
fileS="${urlS##*/}"
# files: sensor.cpp, sensor.h, stopper.cpp, stopper.h
[ -d "$fileS" ] && echo "Found" && sudo rm -r "$fileS" && echo "Folder ($fileS) deleted!"

[ ! -d "$fileS" ] && echo "Not Found" && git clone https://github.com/Summer-Lo/TM5022-Student.git && sudo chmod -R 777 "$fileS"

cd "$urlSL" && cp sensor.cpp sensor.h stopper.cpp stopper.h "$urlT1" && cp sensor.cpp sensor.h stopper.cpp stopper.h "$urlT2_1" && cp sensor.cpp sensor.h stopper.cpp stopper.h "$urlT2_2" && cp sensor.cpp sensor.h stopper.cpp stopper.h "$urlT3"
cd
cd Desktop
[ -d "$fileS" ] && echo "Found TM5022-Student" && sudo rm -r "$fileS" && echo "Folder ($fileS) deleted!"
echo "Complete reborn"

cd 
cd /home/pi/version2
sleep 10
python GPIO2MQTT_PLC_v2.py 2

#!/bin/sh
# TM5022_reborn.sh

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
[ -d "$file" ] && echo "Found" && sudo rm -r "$file" && echo "Folder ($file) deleted!"

[ ! -d "$file" ] && echo "Not Found" && git clone https://github.com/Summer-Lo/TM5022-Student.git && sudo chmod -R 777 "$fileS"

cd "$urlSL" && cp sensor.cpp sensor.h stopper.cpp stopper.h "$urlT1" && cp sensor.cpp sensor.h stopper.cpp stopper.h "$urlT2_1" && cp sensor.cpp sensor.h stopper.cpp stopper.h "$urlT2_2" && cp sensor.cpp sensor.h stopper.cpp stopper.h "$urlT3"
echo "Complete reborn"

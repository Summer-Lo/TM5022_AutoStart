#!/bin/sh
# TM5022_reborn.sh
urlAuto="/home/pi/Desktop/TM5022_AutoStart"
fileAuto="${urlAuto##*/}"
[ -d "$fileAuto" ] && echo "Found" && sudo rm -r "$fileAuto" && echo "Folder ($file) deleted!"

[ ! -d "$fileAuto" ] && echo "Not Found" && git clone https://github.com/Summer-Lo/TM5022_AutoStart.git && sudo chmod -R 777 "$fileAuto" && cd "$urlAuto" && ./autoStart_setup.bash

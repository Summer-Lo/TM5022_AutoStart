#!/usr/bin/env bash
cd /home/pi/TM5022_AutoStart/
sudo cp LXinput-TM5022.desktop /home/pi/.config/autostart/
sudo chmod 777 /home/pi/.config/autostart/LXinput-TM5022.desktop
sudo cp TM5022.sh /home/pi
sudo cp TM5022_vlc.sh /home/pi
sudo chmod 777 /home/pi/TM5022.sh
sudo chmod 777 /home/pi/TM5022_vlc.sh

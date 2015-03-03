sudo cp inittab /etc/inittab
sudo apt-get install minicom
minicom -b 38400 -o -D /dev/ttyAMA0
#press UPSR to see minicom welcome screen
sudo cp raspi-blacklist.conf /etc/modprobe.d/raspi-blacklist.conf
sudo cp config.txt /boot/config.txt
sudo cp modules /etc/modules
sudo reboot
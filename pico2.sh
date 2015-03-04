sudo apt-get install i2c-tools
sudo i2cdetect -y 1
sudo bash
echo ds1307 0x68 > /sys/class/i2c-adapter/i2c-0/new_device
exit
sudo hwclock -r
sudo hwclock -w
sudo cp rc.local /etc/rc.local
sudo cp UPS_PIco.hex /home/pi/UPS_PIco.hex
sudo cp picofu.py /home/pi/picofu.py
cd ..
sudo i2cset -y 1 0x6b 0x00 0xff && python picofu.py -f UPS_PIco.hex
sudo cp picofssd.py /home/pi/picofssd.py
sudo python /home/pi/picofssd.py
sudo apt-get autoremove
sudo reboot
sudo apt-get install i2c-tools
sudo i2cdetect -y 1
sudo bash
echo ds1307 0x68 > /sys/class/i2c-adapter/i2c-0/new_device
exit
sudo hwclock -r
sudo hwclock -w
sudo cp rc.local /etc/rc.local
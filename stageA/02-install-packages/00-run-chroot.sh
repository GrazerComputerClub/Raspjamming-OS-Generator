#!/bin/bash -e

pip3 install esptool websockets wiringpi adafruit-circuitpython-am2320 Adafruit_DHT rshell -t /usr/local/lib/python3.5/dist-packages
pip3 install esptool websockets wiringpi adafruit-circuitpython-am2320 Adafruit_DHT rshell -t /usr/local/lib/python3.7/dist-packages
pip install wiringpi adafruit-ampy -t /usr/local/lib/python2.7/dist-packages/

apt-get install /home/pi/wiringpi-latest.deb
apt-get install -y --allow-downgrades /home/pi/liblirc0_0.10.1-5.2_armhf.deb /home/pi/liblirc-client0_0.10.1-5.2_armhf.deb /home/pi/lirc_0.10.1-5.2_armhf.deb || echo ignoring error no /dev/lirc
apt-mark hold liblirc0 liblirc-client0 lirc
rm /home/pi/*.deb

chown -R root:root /usr/bin/geany-gtk2
chown -R root:root /usr/lib/arm-linux-gnueabihf/geany-gtk2/*

#disable monodoc-http service - to free ram
systemctl disable mono-xsp4.service



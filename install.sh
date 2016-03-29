#! /bin/bash

apt-get update

apt-get install -y emacs python-serial git gcc-arm-none-eabi gdb-multiarch vim gnuradio gr-osmosdr gqrx make automake pkg-config libusb-1.0.0-dev libusb-1.0.0 binwalk gcc-mips-linux-gnu gcc-mipsel-linux-gnu valabind g++ swig swig3.0 openocd

# stlink from git
git clone 'https://github.com/texane/stlink'
cd stlink
./autogen.sh
./configure
make
make install

#
cd

#logic
curl -O 'http://downloads.saleae.com/betas/1.2.5/Logic+1.2.5+(64-bit)+compatibility_release.zip'
unzip "Logic*"

#radare
git clone 'https://github.com/radare/radare2'
./radare2/sys/install.sh

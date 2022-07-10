#!/usr/bin/env bash

# Linux installation
if [[ `uname` == 'Linux' ]]; then
  sudo apt-get install -y python3-numpy python3-scipy python3-pil python3-serial
  sudo pip3 install libusb1
  ./udev.sh
  sudo usermod -a -G plugdev $USER

  # Optional
  sudo apt-get install -y imagemagick

# macOS installation (may work on other OS's...)
#elif [[ `uname` == 'Darwin' ]]; then
else
  sudo pip3 install numpy
  sudo pip3 install scipy
  sudo pip3 install Pillow
  sudo pip3 install pyserial
  sudo pip3 install libusb1
fi

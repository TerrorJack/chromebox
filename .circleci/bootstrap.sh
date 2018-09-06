#!/bin/sh -e

apt-mark hold dash
apt update
apt full-upgrade -y
apt install -y \
  curl \
  gnupg

curl -sSL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "deb http://dl.google.com/linux/chrome/deb stable main" > /etc/apt/sources.list.d/google-chrome-unstable.list

apt update
apt install -y \
  fonts-noto* \
  google-chrome-unstable

apt remove -y \
  curl \
  gnupg
apt autoremove -y
apt clean -y
rm /tmp/bootstrap.sh

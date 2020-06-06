#!/bin/bash -e

echo "Adding Docker’s official GPG key"
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
apt-key fingerprint 0EBFCD88

echo "Set up the stable repository to download Docker"
add-apt-repository \
   "deb [arch=armhf] https://download.docker.com/linux/debian \
   buster \
   stable"

apt-get update
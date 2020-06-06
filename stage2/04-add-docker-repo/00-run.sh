#!/bin/bash -e

add-apt-repository \
   "deb [arch=armhf] https://download.docker.com/linux/debian \
   buster \
   stable"

apt-get update
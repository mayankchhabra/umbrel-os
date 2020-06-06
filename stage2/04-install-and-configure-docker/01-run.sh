#!/bin/bash -e

echo "Adding Docker’s official GPG key"
on_chroot << EOF
curl https://download.docker.com/linux/debian/gpg | apt-key add -
EOF

echo "Set up the stable repository to download Docker"
on_chroot << EOF
add-apt-repository \
   "deb [arch=armhf] https://download.docker.com/linux/debian \
   buster \
   stable"
apt-get update
EOF
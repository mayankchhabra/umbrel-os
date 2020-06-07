#!/bin/bash -e
echo "Docker Version:"
on_chroot << EOF
docker -v
EOF

on_chroot << EOF
if ! docker -v
then
	echo 'Installing Docker'
	curl -SsL https://get.docker.com | sh
fi
EOF

echo "Adding user to the 'docker' group"
echo "Also fixing permissions on folders"
on_chroot << EOF
usermod -a -G docker $FIRST_USER_NAME
chown -R $FIRST_USER_NAME:$FIRST_USER_NAME /home/$FIRST_USER_NAME
EOF
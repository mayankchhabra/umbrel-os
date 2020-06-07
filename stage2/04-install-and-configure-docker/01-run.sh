#!/bin/bash -e
echo "Updating CA certs"
on_chroot << EOF
update-ca-certificates
EOF

echo "Installing Docker"
on_chroot << EOF
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
EOF

echo "Adding user to the 'docker' group"
echo "Also fixing permissions on folders"
on_chroot << EOF
usermod -a -G docker $FIRST_USER_NAME
chown -R $FIRST_USER_NAME:$FIRST_USER_NAME /home/$FIRST_USER_NAME
EOF
#!/bin/bash -e

echo "Adding Docker’s official GPG key"
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
apt-key fingerprint 0EBFCD88

echo "Add Bazel APT repository key"
curl https://bazel.build/bazel-release.pub.gpg | apt-key add -
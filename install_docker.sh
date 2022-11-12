#!/bin/bash

# Install docker
. ./get_os_version.sh

sh ./upgrade_package.sh
([ $os_id = "centos" ] && d="") || d=".io"
sudo $pgm $install_command -y docker$d
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl stop docker
sudo systemctl start docker

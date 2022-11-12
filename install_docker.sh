#!/bin/bash

# Install docker
. ./get_os_version.sh

sh ./upgrade_package.sh
([ $os_id = "centos" ] && d="") || d=".io"
packages="docker$d"
installPackages
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl stop docker
sudo systemctl start docker

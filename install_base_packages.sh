#!/bin/bash

# Upgrade packages and install base packages
. ./get_os_version.sh

sh ./upgrade_package.sh
[ $os_id = "centos" ] && sudo $pgm $install_command -y epel-release && sh sh ./upgrade_package.sh
sudo $pgm $install_command -y curl gcc htop make net-tools perl screen tar tmux unzip vim wget

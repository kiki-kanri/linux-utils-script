#!/bin/bash

# Upgrade packages and install base packages
. ./get_os_version.sh

sh ./upgrade_package.sh
packages="curl gcc htop make net-tools perl screen tar tmux unzip vim wget"
[ $os_id = "centos" ] && packages="$packages epel-release"
installPackages

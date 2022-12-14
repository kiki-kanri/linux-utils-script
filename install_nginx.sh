#!/bin/bash

# Install nginx
. ./get_os_version.sh

if [ $os_id = "centos" ]; then
	sudo $pgm $install_command yum-utils
	sudo cp ./centos/nginx.repo /etc/yum.repos.d/nginx.repo
else
	cd /tmp/
	sudo $pgm $install_command -y gnupg2 ca-certificates lsb-release ubuntu-keyring
	curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor |
		sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null
	gpg --dry-run --quiet --import --import-options import-show /usr/share/keyrings/nginx-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] http://nginx.org/packages/ubuntu $(lsb_release -cs) nginx" |
		sudo tee /etc/apt/sources.list.d/nginx.list
	cd $(pwd)
fi

packages="nginx"
service="nginx"
installPackages && enableService

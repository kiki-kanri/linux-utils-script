#!/bin/bash

# Install nodejs
. ./get_os_version.sh

read -p "輸入安裝Node版本(14~18)：" node_version

if [ $os_id = "centos" ]; then
	url="https://rpm.nodesource.com/setup_$node_version.x"
else
	url="https://deb.nodesource.com/setup_$node_version.x"
fi

cd /tmp/ &&
	curl -fsSL $url | sudo bash - &&
	packages="nodejs"
	installPackages
	sudo npm i npm@latest -g &&
	cd $(pwd)

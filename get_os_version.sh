#!/bin/bash

. ./utils.sh

export os_id=$(grep "^ID=" /etc/os-release | cut -d'=' -f2 | tr -d '"')
export os_version=$(grep "^VERSION_ID=" /etc/os-release | cut -d'=' -f2 | tr -d '"')

case $os_id in
"alpine")
	export pgm="apk"
	export install_command="add"
	;;
"centos")
	if [ $os_version != "7" ]; then
		echo "This script only work for centos7!"
		exit
	else
		export pgm="yum"
		export install_command="install"
	fi
	;;
"ubuntu")
	if [ $os_version != "20.04" ] && [ $os_version != "22.04" ]; then
		echo "This script only work for ubuntu 20.04 or 22.04!"
		exit
	else
		export pgm="apt-get"
		export install_command="install"
	fi
	;;
*)
	echo "This script does not support this operating system!"
	exit
	;;
esac

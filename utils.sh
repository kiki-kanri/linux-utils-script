#!/bin/bash

enableService() {
	case $os_id in
	"alpine") ;;
	*)
		sudo systemctl enable $service
		;;
	esac
}

installPackages() {
	sudo $pgm $install_command -y $packages
}


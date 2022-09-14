#!/bin/bash

# Install all

. ./get_os_version.sh

sh ./install_base_packages.sh
sh ./nodejs.sh -v 16
sh ./install_py310.sh
sh ./install_nginx.sh
sh ./install_php8.sh -v 8.0
sh ./install_composer.sh
sh ./install_mariadb.sh
sh ./install_docker.sh

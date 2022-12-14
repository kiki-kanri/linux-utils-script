#!/bin/bash

# Install mariadb 10.9
. ./get_os_version.sh

cd /tmp/
curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup &&
    sudo bash mariadb_repo_setup --mariadb-server-version=10.9 &&
    packages="mariadb-server" && service="mariadb" &&
    installPackages && enableService

cd $(pwd)

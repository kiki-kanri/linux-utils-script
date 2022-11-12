#!/bin/bash

# Upgrade packages
. ./get_os_version.sh

sudo $pgm update -y
[ $os_id = "alpine" ] || [ $os_id = "ubuntu" ] && sudo $pgm upgrade -y

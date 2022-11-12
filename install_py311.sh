#!/bin/bash

# Install python 3.11.0
. ./get_os_version.sh

python_version="3.11.0"
python_tar="Python-$python_version.tar.xz"
python_dir="Python-$python_version"

# Install python require package
case $os_id in
"centos")
	sudo $pgm groupinstall -y "Development Tools"
	sudo $pgm -y install zlib-devel libffi-devel ncurses-devel gdbm-devel xz-devel sqlite-devel tk-devel uuid-devel readline-devel bzip2-devel libffi-devel openssl11 openssl11-devel
	sh ./centos/install_openssl.sh
	;;
"ubuntu")
	sudo $pgm $install_command -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev libbz2-dev pkg-config
	;;
esac

# Install python
if [ $os_id = "alpine" ]; then
	echo "Not supported on alpine!"
else
	cd /tmp/ &&
		wget https://www.python.org/ftp/python/$python_version/$python_tar &&
		tar -xf $python_tar &&
		sudo mv $python_dir /opt/ &&
		rm -rf $python_tar &&
		cd /opt/$python_dir &&
		./configure --enable-optimizations --enable-shared &&
		sudo make altinstall &&
		sudo ldconfig /opt/$python_dir
	sudo ln -s /usr/local/bin/python3.11 /bin/python3.11
	sudo ln -s /usr/local/bin/python3.11-config /bin/python3.11-config
	sudo python3.11 -m pip install pip --upgrade
	cd $(pwd)
fi

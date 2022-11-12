#!/bin/bash

# Install python 3.10.8
. ./get_os_version.sh

python_version="3.10.8"
python_tar="Python-$python_version.tar.xz"
python_dir="Python-$python_version"

# Install python require package
case $os_id in
"alpine")
	PYTHONUNBUFFERED=1
	packages="readline-dev python3"
	installPackages
	sudo python3.10 -m ensurepip
	sudo python3.10 -m pip install pip setuptools wheel --no-cache --upgrade
	exit
	;;
"centos")
	sudo $pgm groupinstall -y "Development Tools"
	packages="install zlib-devel libffi-devel ncurses-devel gdbm-devel xz-devel sqlite-devel tk-devel uuid-devel readline-devel bzip2-devel libffi-devel openssl11 openssl11-devel"
	installPackages
	sh ./centos/install_openssl.sh
	;;
"ubuntu")
	packages="build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev libbz2-dev pkg-config"
	installPackages
	;;
esac

# Install python
cd /tmp/ &&
	wget https://www.python.org/ftp/python/$python_version/$python_tar &&
	tar -xf $python_tar &&
	sudo mv $python_dir /opt/ &&
	rm -rf $python_tar &&
	cd /opt/$python_dir &&
	./configure --enable-optimizations --enable-shared &&
	sudo make altinstall &&
	sudo ldconfig /opt/$python_dir
sudo ln -s /usr/local/bin/python3.10 /bin/python3.10
sudo ln -s /usr/local/bin/python3.10-config /bin/python3.10-config
sudo python3.10 -m pip install pip setuptools wheel --upgrade
cd $(pwd)

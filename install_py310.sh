# Install python 3.10.6
. ./get_os_version.sh

# Install python require package
if [ $os_id = "centos" ]; then
	sudo $pgm -y install zlib-devel libffi-devel ncurses-devel gdbm-devel xz-devel sqlite-devel tk-devel uuid-devel readline-devel bzip2-devel libffi-devel openssl11 openssl11-devel
	sh ./centos/install_openssl.sh
else
	sudo $pgm install -y libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev build-essential gcc make zlib1g-dev libreadline-dev
fi

# Install python
cd /tmp/ && \
wget https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tar.xz && \
tar -xf Python-3.10.6.tar.xz && \
cd Python-3.10.6 && \
./configure && \
make && sudo make install && \
sudo ln -sf /usr/local/bin/python3.10 /bin/python3.10 && \
sudo ln -sf /usr/local/bin/python3.10-config /bin/python3.10-config && \
sudo python3.10 -m pip install pip --upgrade
cd /tmp/
rm -rf Python-3.10.6.tar.xz
sudo rm -rf Python-3.10.6
cd
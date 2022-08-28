# Install python 3.10.6
. ./get_os_version.sh

python_version="3.10.6"
python_tar="Python-$python_version.tar.xz"
python_dir="Python-$python_version"

# Install python require package
if [ $os_id = "centos" ]; then
	sudo $pgm groupinstall -y "Development Tools"
	sudo $pgm -y install zlib-devel libffi-devel ncurses-devel gdbm-devel xz-devel sqlite-devel tk-devel uuid-devel readline-devel bzip2-devel libffi-devel openssl11 openssl11-devel
	sh ./centos/install_openssl.sh
else
	sudo $pgm install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev libbz2-dev pkg-config
fi

# Install python
cd /tmp/ && \
wget https://www.python.org/ftp/python/$python_version/$python_tar && \
tar -xf $python_tar && \
sudo mv $python_dir /opt/ && \
rm -rf $python_tar
cd /opt/$python_dir && \
./configure --enable-optimizations --enable-shared && \
sudo make altinstall && \
sudo ldconfig /opt/$python_dir
sudo ln -s /usr/local/bin/python3.10 /bin/python3.10
sudo ln -s /usr/local/bin/python3.10-config /bin/python3.10-config
sudo python3.10 -m pip install pip --upgrade
cd $(pwd)
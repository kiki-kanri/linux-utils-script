# Install python require package
sudo yum -y install zlib-devel libffi-devel ncurses-devel gdbm-devel xz-devel sqlite-devel tk-devel uuid-devel readline-devel bzip2-devel libffi-devel openssl11 openssl11-devel

# Install Openssl
cd /tmp
wget https://www.openssl.org/source/openssl-1.1.1q.tar.gz
tar -xf openssl-1.1.1q.tar.gz
cd openssl-1.1.1q
./config
make && sudo make install
sudo ln -s /usr/local/lib64/libssl.so.1.1 /usr/lib64/libssl.so.1.1
sudo ln -s /usr/local/lib64/libcrypto.so.1.1 /usr/lib64/libcrypto.so.1.1
cd /tmp
rm openssl-1.1.1q.tar.gz
sudo rm -rf openssl-1.1.1q
cd /tmp

# Install python
cd /tmp
wget https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tar.xz
tar -xf Python-3.10.6.tar.xz
cd Python-3.10.6
./configure
make && sudo make install
sudo ln -s /usr/local/bin/python3.10 /bin/python3.10
sudo ln -s /usr/local/bin/python3.10-config /bin/python3.10-config
sudo python3.10 -m pip install pip --upgrade
cd /tmp
rm -rf Python-3.10.6.tar.xz
sudo rm -rf Python-3.10.6
cd /tmp
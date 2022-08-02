# Install python

# Install require app
sudo apt-get install -y libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev build-essential gcc make zlib1g-dev libreadline-dev

# Download python and install
cd /tmp/
wget https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tar.xz
tar -xf Python-3.10.5.tar.xz
cd Python-3.10.5
./configure
make && sudo make install
cd ..
rm Python-3.10.5.tar.xz
sudo rm -rf Python-3.10.5
cd /tmp/

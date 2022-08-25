# Install python require package
sudo apt-get install -y libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev build-essential gcc make zlib1g-dev libreadline-dev

# Install python
cd /tmp/
wget https://www.python.org/ftp/python/3.10.5/Python-3.10.6.tar.xz
tar -xf Python-3.10.6.tar.xz
cd Python-3.10.6
./configure
make && sudo make install
sudo python3.10 -m pip install pip --upgrade
cd /tmp
rm Python-3.10.6.tar.xz
sudo rm -rf Python-3.10.6
cd /tmp
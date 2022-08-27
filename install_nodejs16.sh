# Install nodejs 16
. ./get_os_version.sh

([ $os_id = "centos" ] && url="https://rpm.nodesource.com/setup_16.x") || url="https://deb.nodesource.com/setup_16.x"

cd /tmp/ && \
curl -fsSL $url | sudo bash - && \
sudo $pgm install -y nodejs && \
sudo npm i npm@latest -g && \
cd $(pwd)
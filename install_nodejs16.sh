# Install nodejs
. ./get_os_version.sh

read -p "輸入安裝Node版本(14~18)：" node_version

([ $os_id = "centos" ] && url="https://rpm.nodesource.com/setup_$node_version.x") || url="https://deb.nodesource.com/setup_$node_version.x"

cd /tmp/ && \
curl -fsSL $url | sudo bash - && \
sudo $pgm install -y nodejs && \
sudo npm i npm@latest -g && \
cd $(pwd)
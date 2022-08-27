# Install docker
. ./get_os_version.sh

sh ./upgrade_package.sh
([ $os_id = "centos" ] && d="") || d=".io"
sudo $pgm install -y docker$d
grep docker /etc/group || sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl stop docker
sudo systemctl start docker
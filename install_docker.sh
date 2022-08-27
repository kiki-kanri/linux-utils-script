# Install docker
. ./get_os_version.sh

sudo $pgm update -y
[ $os_id = "ubuntu" ] && sudo $pgm upgrade -y
sudo $pgm install -y docker
grep docker /etc/group || sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl stop docker
sudo systemctl start docker
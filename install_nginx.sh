# Install nginx
. ./get_os_version.sh

if [ $os_id = "centos" ]; then
	sudo cp ./centos/nginx.repo /etc/yum.repos.d/nginx.repo
else
	cd /tmp/
	curl -O https://nginx.org/keys/nginx_signing.key && sudo apt-key add ./nginx_signing.key
	cd $(pwd)
fi

sudo $pgm update -y
sudo $pgm install -y nginx
sudo systemctl enable nginx
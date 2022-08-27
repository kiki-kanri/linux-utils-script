# Install php8.0 or 8.1
. ./get_os_version.sh

read -p "輸入安裝php版本(8.0/8.1)：" php_version

if [ $os_id = "centos"]; then
	sudo yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm
	sudo yum install -y yum-utils
	sudo yum-config-manager --disable 'remi-php*'
	sudo yum-config-manager --enable remi-php$(printf $php_version | tr -d ".")
	sudo $pgm install -y php php-perl php-{bcmath,cli,common,curl,fpm,gd,imap,mbstring,mysql,readline,redis,swoole,xml,zip}
	php_v="php"
else
	sudo apt-get install -y lsb-release ca-certificates apt-transport-https software-properties-common
	sudo add-apt-repository ppa:ondrej/php
	sudo $pgm install -y php$php_version php$php_version-{cli,common,curl,fpm,gd,imap,mbstring,mysql,readline,redis,xml,zip}
	php_v="php$php_version"
fi

[ $os_id = "centos" ] && sudo $pgm install -y php-json
sudo systemctl enable $php_v-fpm
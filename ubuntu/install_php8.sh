# Install php8.0 or 8.1
read -p "輸入安裝php版本(8.0/8.1)：" php_version

sudo apt-get install -y lsb-release ca-certificates apt-transport-https software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get install -y \
	php$php_version php$php_version-fpm \
	php$php_version-xml php$php_version-mbstring \
	php$php_version-common php$php_version-readline \
	php-pear php$php_version-cli \
	php$php_version-imap php$php_version-zip \
	php$php_version-gd php$php_version-curl \
	php$php_version-swoole php$php_version-mysql

sudo systemctl enable php$php_version-fpm
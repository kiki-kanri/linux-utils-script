# Install php8.0 or 8.1
read -p "輸入安裝php版本(8.0/8.1)：" php_version

sudo apt-get install -y lsb-release ca-certificates apt-transport-https software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get install -y php-pear php$php_version php$php_version-{cli,common,curl,fpm,gd,imap,mbstring,mysql,readline,redis,swoole,xml,zip}
sudo systemctl enable php$php_version-fpm
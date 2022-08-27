# Install php8.0 or 8.1
read -p "輸入安裝php版本(8.0/8.1)：" php_version
php_version=$(printf $php_version | sed 's/\.//')

sudo yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm
sudo yum install -y yum-utils
sudo yum-config-manager --disable 'remi-php*'
sudo yum-config-manager --enable remi-php$php_version
sudo yum -y install php php-pear php-{bcmath,cli,common,curl,fpm,gd,imap,json,mbstring,mysql,readline,redis,swoole,xml,zip}
sudo systemctl enable php-fpm
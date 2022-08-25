# Install php8.0
sudo apt-get install -y lsb-release ca-certificates apt-transport-https software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get install -y php8.0 php8.0-fpm php8.0-xml php8.0-mbstring php8.0-common php8.0-readline php-pear php8.0-cli php8.0-imap php8.0-zip php8.0-gd php8.0-curl php8.0-swoole
sudo systemctl enable php8.0-fpm
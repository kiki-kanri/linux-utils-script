# Install php8.1
sudo apt-get install -y lsb-release ca-certificates apt-transport-https software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get install -y php8.1 php8.1-fpm php8.1-xml php8.1-mbstring php8.1-common php8.1-readline php-pear php8.1-cli php8.1-imap php8.1-zip php8.1-gd php8.1-curl php8.1-swoole
sudo systemctl enable php8.1-fpm
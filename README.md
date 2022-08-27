# linux-utils-script

Linux 自動安裝與設定等腳本

目前支援centos7與Ubuntu 20.04 22.04

執行腳本時產生的檔案在/tmp/目錄

使用方法:

`sh update_package.sh` - 更新apt套件與安裝基礎app

`sh set_locale.sh` - 設定時區跟語系至 Asia/Taipei zh_TW.UTF-8

`sh install_py310.sh` - 安裝python3.10.6

`sh install_nodejs16.sh` - 安裝nodejs 16

`sh install_php8.sh` - 安裝php8，可選8.0或8.1與附屬套件，並設定自動啟動fpm

安裝php時會自帶安裝apache2 (PHP8.0)

`sh install_composer.sh` - 安裝composer

`sh install_mariadb.sh` - 安裝mariadb server 10.9

`sh install_docker.sh` - 安裝mariadb server 10.9

`sh install_portainer.sh` - 安裝portainer
# linux-utils-script

Linux 自動安裝與設定等腳本

目前支援:

- [ ] alpine3.8+
- [x] centos7
- [x] Ubuntu 20.04 22.04

執行腳本時產生的檔案在/tmp/目錄

使用方法:

nginx、php-fpm、mariadb會在安裝完成時設定開機自動啟動

`sh upgrade_package.sh` - 更新套件

`sh install_base_packages.sh` - 安裝基礎套件(下列安裝所需)

`sh set_locale.sh` - 設定時區跟語系至 Asia/Taipei zh_TW.UTF-8

`sh install_py310.sh` - 安裝python3.10.6

`sh install_nodejs.sh` - 安裝nodejs(可選版本)

`sh install_php8.sh` - 安裝php8與附屬套件，可選8.0或8.1

`sh install_composer.sh` - 安裝composer

`sh install_mariadb.sh` - 安裝mariadb server 10.9

`sh install_docker.sh` - 安裝docker，安裝完後須重新登入整理權限

`sh install_portainer.sh` - 安裝portainer

`sh install_all.sh` - 安裝上述所有套件(不包含portainer)
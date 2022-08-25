# linux-utils-script

Linux 自動安裝與設定等腳本

目前確定支援Ubuntu 版本20.04與22.04

執行腳本時產生的檔案在/tmp/目錄

使用方法:

`sh apt_upgrade.sh` - 更新apt套件與安裝基礎app

`sh set_locale.sh` - 設定時區跟語系至 Asia/Taipei zh_TW.UTF-8

`sh install_py310.sh` - 安裝python3.10.6

`sh install_nodejs16.sh` - 安裝nodejs 16

`sh run_base.sh` - 照順序執行上方全部script

# 其餘安裝腳本

`sh install_php80.sh` - 安裝php8.0與附屬套件，並設定自動啟動php8.0-fpm

`sh install_php81.sh` - 安裝php8.1與附屬套件，並設定自動啟動php8.1-fpm

安裝php時會自帶安裝apache2

`sh install_composer.sh` - 安裝composer

`sh install_mariadb.sh` - 安裝mariadb server 10.9
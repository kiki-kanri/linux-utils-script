# linux-utils-script

Linux 自動安裝與設定等腳本

目前只確定支援Centos 7 其餘版本尚未確定

執行腳本時產生的檔案在/tmp/目錄

使用方法:

`sh yum_upgrade.sh` - 更新yum套件與安裝基礎app

~~`sh set_locale.sh` - 設定時區跟語系至 Asia/Taipei zh_TW.UTF-8~~

`sh install_py310.sh` - 安裝python3.10.6

`sh install_nodejs16.sh` - 安裝nodejs 16

`sh install_docker.sh` - 安裝docker

安裝docker後須重新登入

`sh install_portainer.sh` - 安裝portainer

`sh run_all.sh` - 照順序執行上方全部script (不包含docker/portainer)

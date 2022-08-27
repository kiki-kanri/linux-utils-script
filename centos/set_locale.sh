# Set timezone and locale

sudo yum -y install kde-l10n-Chinese telnet
sudo yum -y reinstall glibc-common
sudo localedef -c -f UTF-8 -i zh_TW zh_TW.utf8
sudo echo 'export LC_ALL="zh_TW.UTF-8"' >> sudo /etc/profile
. /etc/profile
sudo cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime
sudo echo "Asia/Taipei" >> sudo /etc/timezone
sudo ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime
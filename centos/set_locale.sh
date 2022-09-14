#!/bin/bash

# Set locale and timezone to zh_TW.UTF-8 and Asia/Taipei

sudo yum -y install kde-l10n-Chinese telnet &&
    sudo yum -y reinstall glibc-common &&
    sudo localedef -c -f UTF-8 -i zh_TW zh_TW.utf8 &&
    sudo sh -c 'echo "export LC_ALL=\"zh_TW.UTF-8\"" >> /etc/profile' &&
    . /etc/profile &&
    sudo cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime &&
    sudo sh -c 'echo "Asia/Taipei" >> /etc/timezone' &&
    sudo ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime

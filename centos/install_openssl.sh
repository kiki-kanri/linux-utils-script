#!/bin/bash

# Install openssl1.1.1
cd /tmp/
wget https://www.openssl.org/source/openssl-1.1.1q.tar.gz
tar -xf openssl-1.1.1q.tar.gz
cd openssl-1.1.1q
./config
make && sudo make install
sudo ln -s /usr/local/lib64/libssl.so.1.1 /usr/lib64/libssl.so.1.1
sudo ln -s /usr/local/lib64/libcrypto.so.1.1 /usr/lib64/libcrypto.so.1.1
cd /tmp/
rm openssl-1.1.1q.tar.gz
sudo rm -rf openssl-1.1.1q
cd $(pwd)

# Install nodejs 16
cd /tmp
curl -sL https://rpm.nodesource.com/setup_16.x | sudo -E bash - 
sudo yum install -y nodejs
sudo npm i npm@latest -g
cd /tmp
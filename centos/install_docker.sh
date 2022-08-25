# Install docker
sudo yum update -y
sudo yum install -y docker
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl stop docker
sudo systemctl start docker
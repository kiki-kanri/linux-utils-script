# Install mariadb 10.9
curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
sudo bash mariadb_repo_setup --mariadb-server-version=10.9
sudo yum update -y
sudo yum install -y mariadb-server
sudo systemctl enable mariadb
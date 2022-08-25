# Install mariadb 10.9
curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
sudo bash mariadb_repo_setup --mariadb-server-version=10.9
sudo apt-get update -y
sudo apt-get install -y mariadb-server
# Install mariadb 10.9
. ./get_os_version.sh

cd /tmp/
curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup && \
sudo bash mariadb_repo_setup --mariadb-server-version=10.9 && \
sudo $pgm update -y && \
sudo $pgm install -y mariadb-server && \
sudo systemctl enable mariadb
cd $(pwd)
# Install portainer
. ./get_os_version.sh

docker ps || (echo "Can't use docker command! Check your docker state and permissions." && exit)

docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
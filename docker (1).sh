docker run -itd --restart=always -p 9009:9000 --memory 100m --cpus 0.5 --privileged -v /var/run/docker.sock:/var/run/docker.sock uifd/ui-for-docker

 docker run -itd -p 9009:9000 --restart=always --privileged -v  /var/run/docker.sock:/var/run/docker.sock uifd/ui-for-docker

docker ui 

docker run -itd -p 9009:9000 --restart=always --privileged -v  /var/run/docker.sock:/var/run/docker.sock uifd/ui-for-docker

docker run -itd --restart=always -p 9000:9000 --memory 100m --cpus 0.5 -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer 

portainer

docker run -itd -p 8008:8080 -d --restart=always --memory 100m --cpus 0.5 --name shipyard --link shipyard-rethinkdb:rethinkdb shipyard/shipyard

gaucamole

docker run   -p 8080:8080 --memory 200m --cpus 0.5  -v /guacamole:/config   oznu/guacamole

docker run -d \
  --name=webtop \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Jakarta \
  -p 3000:3000 \
  -v /path/to/data:/config \
  --shm-size="4gb" \
  --restart unless-stopped \
  ghcr.io/linuxserver/webtop:ubuntu-mate

home asistant

docker run -d \
--name="hass" \
--restart on-failure \
-v /Users/hass_config:/config \
-e "TZ=Asia/Jakarta" \
-p 8123:8123 \
--memory 512m --cpus 0.5 \
homeassistant/home-assistant

odoo
docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name db postgres:13 --memory 300m --cpus 0.5 

docker run -p 8069:8069 --name odoo --link db:db -t odoo --memory 300m --cpus 0.5
docker run -itd -p 8069:8069 --name odoo --link db:db -t veivaa/odoo --memory 512m --cpus 0.5


$ docker stop odoo
$ docker start -a odoo

docker run -it -p 3000:3000 -v $(pwd)/ntopng.license:/etc/ntopng.license:ro --net=host ntop/ntopng:latest -i wlan0 --memory 100m --cpus 0.5

docker run -it -p 3000:3000 -v $(pwd)/ntopng.license:/etc/ntopng.license:ro --net=host junquera/ntopng -i wlan0 --memory 200m --cpus 0.5
netbox

https://computingforgeeks.com/how-to-run-netbox-ipam-tool-in-docker-containers/


docker run -d --restart=unless-stopped -p 88:80 -p 1443:443 --memory 200m --cpus 1 rancher/rancher:latest

docker run -itd -p 10000:10000 johanp/webmin --memory 300m --cpus 0.5 

docker run -itd -p 200:80 cnsoluciones/mikrotik --memory 300m --cpus 0.5

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube


minikube start --driver=docker --force

wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
k3d cluster create mycluster
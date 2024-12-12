docker run -d \
  --name=swag \
  --cap-add=NET_ADMIN \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -e URL=example.com \
  -e VALIDATION=dns \
  -e SUBDOMAINS=netbird,\
  -e DNSPLUGIN=cloudflare \
  -e ONLY_SUBDOMAINS=true \
  -p 2096:443 \
  -v /mnt/data/swag/config:/config \
  --restart unless-stopped \
  linuxserver/swag:latest

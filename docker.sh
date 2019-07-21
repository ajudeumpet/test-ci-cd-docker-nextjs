sudo docker run -d -p 80:80 -p 443:443 \
    --name nginx-proxy \
    -v /etc/ssl/certs:/etc/nginx/certs:ro \
    -v /etc/nginx/vhost.d \
    -v /usr/share/nginx/html \
    -v /var/run/docker.sock:/tmp/docker.sock:ro \
    --label com.github.jrcs.letsencrypt_nginx_proxy_companion.nginx_proxy \
    jwilder/nginx-proxy

sudo docker run -d \
    --name nginx-letsencrypt \
    -e "DEBUG=true" \
    -v /etc/ssl/certs:/etc/nginx/certs:rw \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    --volumes-from nginx-proxy \
    jrcs/letsencrypt-nginx-proxy-companion:latest

sudo docker exec nginx-letsencrypt /app/force_renew

sudo docker run -d --name watchtower -v /var/run/docker.sock:/var/run/docker.sock v2tec/watchtower --interval 30

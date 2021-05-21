
# MONITORING NETDATA WITH DEBIAN 10 VERSION BETA 
This project is thinking for monitor web server NGINX/APACHE and other components with the tool netdata

# BUILDING IMAGE DOCKER in bash
'docker build -t netdata-initial -f Dockerfile .'
or
'docker build --no-cache -t netdata-initial -f Dockerfile .'

# RUN IMAGE DOCKER in bash
docker run -p 19999:19999 --name netdata-initial -d netdata-initial


docker exec -it <name_docker> bash
# Directory for modify monitor of apache2 with the modulo enabled mod_status in language GO for netdata
/srv/netdata/etc/netdata/go.d/apache.conf
# Directory for modify monitor of apache2 with the modulo enabled mod_status in language python for netdata
/srv/netdata/etc/netdata/python.d/apache.conf

# Directory for modify monitor of PHP-FPM with the modulo enabled mod_status in language python for netdata (NO RECOMMEND FOR MOMENTS)
/srv/netdata/etc/netdata/python.d/phpfpm.conf

# Recommended
If do build of image was broke then first download image debian with command "docker pull debian:bullseye-backports

# Documentation netdata
https://learn.netdata.cloud/docs/agent/packaging/docker

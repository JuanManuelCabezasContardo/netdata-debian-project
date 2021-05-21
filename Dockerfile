FROM debian:bullseye-backports

RUN apt-get update
RUN apt-get install zlib1g-dev libuv1-dev uuid-dev libmnl-dev gcc g++ make git autoconf autoconf-archive autogen automake pkg-config cmake curl openssl libtool libtool-bin libelf-dev libbpf-dev libssl-dev -y

EXPOSE 19999 22

RUN git clone --depth=1 https://github.com/firehol/netdata.git /srv/netdata_installer

RUN cd /srv/netdata_installer && ./netdata-installer.sh --dont-wait --dont-start-it  --disable-telemetry --install /srv

RUN apt-get install gnupg2 wget curl ca-certificates apt-transport-https openssh-server supervisor python3 nano -y

#Supervisord
COPY conf/supervisord.conf /etc/supervisord.conf

#start sh
COPY scripts/start.sh /start.sh

RUN chmod 755 /start.sh

CMD /start.sh

. ./env_config.sh

mkdir -p /var/run/xl2tpd && touch /var/run/xl2tpd/l2tp-control && service strongswan restart  && service xl2tpd restart && yum install wget && strongswan up myvpn && echo "c myvpn" > /var/run/xl2tpd/l2tp-control

sleep 10 && route add $VPN_SERVER_IP  gw 192.168.2.1 && route add $PUBLIC_IP gw 192.168.2.1 

sleep 10 && route add default dev ppp0 &&  wget -qO- http://ipv4.icanhazip.com; echo




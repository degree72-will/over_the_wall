#!/bin/bash
VPN_SERVER_IP=''
VPN_IPSEC_PSK=''
VPN_USER='testuser'
VPN_PASSWORD='testvpn'
PUBLIC_IP=`wget -qO- http://ipv4.icanhazip.com;`
LOCAL_IP='192.168.2.120'

#!/bin/bash
echo "start to set ip"

. ./env_config.sh

GATEWAY=`echo $LOCAL_IP| sed -r 's#[0-9]+$#1#g'`

file_path=/etc/sysconfig/network-scripts/ifcfg-ens33

sed -i 's/dhcp/static/g' $file_path
echo "
IPADDR=$LOCAL_IP
GATEWAY=$GATEWAY
NETMASK=255.255.255.0
DNS1=114.114.114.114
">> $file_path 


echo "start to restart network service"
service network restart


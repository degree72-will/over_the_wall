. ./env_config.sh

ln ./shadowsocks.json /etc/shadowsocks.json 
systemctl stop firewalld && yum -y install python-setuptools && easy_install pip && pip install --upgrade pip && pip install shadowsocks && ssserver -c /etc/shadowsocks.json -d restart && cat  /var/log/shadowsocks.log



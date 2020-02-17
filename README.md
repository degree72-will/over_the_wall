# over_the_wall

vpn and shadowsocks to over the wall

### 0.  You need to install git first

By default, centos 7 machine can not access the internet, you neet to edit the config file
```bash
sed -i 's/ONBOOT=no/ONBOOT=yes' /etc/sysconfig/network-scripts/ifcfg-ens33 && sytemctl restart network 
```

stop the firewall
```bash
systemctl stop firewalld.service && systemctl disable firewalld.service
```

Then install git
```bash
yum install -y git && git clone https://github.com/degree72-will/over_the_wall.git 
```

### 1. install the necessray packages

```bash
sh install_package.sh
```

### 2. edit the vpn info in `env_config_sample` and rame it to `env_config` 
```bash
mv env_config_sample.sh env_config.sh

```

### 3. set static ip
```bash
sh set_static_ip.sh
```

### 4. set up the vpn connection
```bash
sh set_vpn_env.sh
```

### 5. start the vpn connection 
```bash
sh start_vpn.sh
```


### 4. start the shadowsocks server
```bash
sh start_ss_server.sh
```



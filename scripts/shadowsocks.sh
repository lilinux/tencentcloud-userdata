#!/bin/bash
# ----------USERDATA: create shadowsocks server----------
# ----------VARIABLES----------
PORT=443
PASSWORD="helloworld"
WORKERS=10
METHOD="aes-256-cfb"
# ----------SCRIPT: donn't modify unless what you know what to do----------
yum -y install python-pip
pip install shadowsocks
cat << EOF > /etc/shadowsocks.json
{
    "server": "0.0.0.0",
    "server_port": $PORT,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"$PASSWORD",
    "timeout":300,
    "method":"$METHOD",
    "fast_open": true,
    "workers": $WORKERS
}
EOF
cat << EOF >  /etc/systemd/system/shadowsocks.service
[Unit]
Description=Shadowsocks
[Service]
TimeoutStartSec=0
ExecStart=/usr/bin/ssserver -c /etc/shadowsocks.json
[Install]
WantedBy=multi-user.target
EOF
systemctl enable shadowsocks
systemctl start shadowsocks
# ----------END: create shadowsocks server----------

#!/bin/bash
sudo -i

apt update
apt upgrade -y
apt update

apt install openjdk-17-jre-headless -y

wget https://download.sonatype.com/nexus/3/nexus-3.71.0-06-unix.tar.gz -P /opt

cd /opt || exit 1

tar -zxvf nexus-3.71.0-06-unix.tar.gz

useradd nexus

mv nexus-3.71.0-06/ nexus
chown -R nexus:nexus /opt/nexus
chown -R nexus:nexus /opt/sonatype-work

echo '[Unit]
Description=Nexus Service
After=network.target

[Service]
Type=forking
LimitNOFILE=65536
ExecStart=/opt/nexus/bin/nexus start
ExecStop=/opt/nexus/bin/nexus stop
User=nexus
Restart=on-abort

[Install]
WantedBy=multi-user.target' >> /etc/systemd/system/nexus.service


systemctl daemon-reload
systemctl enable nexus
systemctl start nexus
systemctl status nexus

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


git clone https://github.com/bandakarthikreddy/configuration-files.git

mv /opt/configuration-files/nexus.rc /opt/nexus/bin/
mv /opt/configuration-files/nexus.service /etc/systemd/system/

systemctl daemon-reload
systemctl enable nexus
systemctl start nexus
systemctl status nexus

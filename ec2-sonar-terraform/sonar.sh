#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt update

sudo apt install openjdk-17-jre-headless -y

sudo apt install unzip -y

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.6.0.92116.zip -P /opt

cd /opt || exit 1

sudo unzip sonarqube-10.6.0.92116.zip
sudo mv sonarqube-10.6.0.92116 sonar

sudo useradd sonar
sudo chown -R sonar:sonar /opt/sonar

sudo git clone https://github.com/bandakarthikreddy/configuration-files.git

sudo mv /opt/configuration-files/sonar.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl enable sonar
sudo systemctl start sonar
sudo systemctl status sonar

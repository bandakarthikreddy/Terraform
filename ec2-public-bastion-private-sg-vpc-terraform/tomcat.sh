#!/bin/bash
sudo -i
apt update
apt upgrade -y
apt update
apt install openjdk-17-jre-headless -y
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/bin/apache-tomcat-9.0.93.tar.gz -P /opt
cd /opt || exit 1
tar -zxvf apache-tomcat-9.0.93.tar.gz
mv apache-tomcat-9.0.93 tomcat
useradd -m -U -d /opt/tomcat -s /bin/false tomcat
chown -R tomcat: /opt/tomcat
chmod +x /opt/tomcat/bin/*.sh

# Inject Tomcat and Admin credentials into tomcat-users.xml
    sed '<user username="role1" password="<must-be-changed>" roles="role1"/>
    -->/a\<role rolename="manager-gui"/>
      <role rolename="admin-gui"/>
      <role rolename="manager-script"/>
      <user username="${var.tomcat_username}" password="${var.tomcat_password}" roles="manager-gui,manager-script"/>
      <user username="${var.admin_username}" password="${var.admin_password}" roles="manager-gui, admin-gui"/>' /opt/tomcat/conf/tomcat-users.xml

/*
sed '<user username="role1" password="<must-be-changed>" roles="role1"/>
-->/a\<role rolename="manager-gui"/>
  <role rolename="admin-gui"/>
  <role rolename="manager-script"/>
  <user username="tomcat" password="tomcat" roles="manager-gui, manager-script"/>
  <user username="admin" password="tomcat" roles="admin-gui, manager-gui"/>' /opt/tomcat/conf/tomcat-users.xml
*/

sed 's/<Valve className="org.apache.catalina.valves.RemoteAddrValve"
         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />/<!--  <Valve className="org.apache.catalina.valves.RemoteAddrValve"
         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> -->' /opt/tomcat/webapps/manager/META-INF/context.xml

sed 's/<Valve className="org.apache.catalina.valves.RemoteAddrValve"
         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />/<!--  <Valve className="org.apache.catalina.valves.RemoteAddrValve"
         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> -->' /opt/tomcat/webapps/host-manager/META-INF/context.xml

echo "[Unit]
Description=Apache Tomcat 10 Web Application Server
After=network.target

[Service]
Type = forking

User=tomcat
Group=tomcat

Environment="JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64/"
Environment="CATALINA_HOME=/opt/tomcat"
Environment="CATALINA_BASE=/opt/tomcat"
Environment="CATALINA_PID=/opt/tomcat/temp/tomcat.pid"
Environmet="CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC"

ExecStart=/opt/tomcat/bin/startup.sh
ExecStop=/opt/tomcat/bin/shutdown.sh

[Install]
WantedBy=multi-user.target" >> /etc/systemd/system/tomcat.service

        sudo systemctl daemon-reload
        sudo systemctl enable tomcat
        sudo systemctl restart tomcat
        sudo systemctl status tomcat

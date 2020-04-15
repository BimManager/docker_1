#!/bin/bash

adduser --disabled-login --disabled-password --gecos "" teamspeak
cd /home/teamspeak
curl -O https://files.teamspeak-services.com/releases/server/3.11.0/teamspeak3-server_linux_amd64-3.11.0.tar.bz2
tar -xvf teamspeak3-server_linux_amd64-3.11.0.tar.bz2
rm -rf teamspeak3-server_linux_amd64-3.11.0.tar.bz2
mv teamspeak3-server_linux_amd64/* ./
rmdir teamspeak3-server_linux_amd64
touch .ts3server_license_accepted
chmod 755 /etc/init.d/teamspeak
update-rc.d teamspeak defaults
service teamspeak start
tail -f /dev/null
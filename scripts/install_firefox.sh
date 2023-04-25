#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

GECKO_DRIVER_VERSION=$1

apt-get install -y software-properties-common libgtk-3-0 libdbus-glib-1-2 xvfb
apt-get update
add-apt-repository ppa:mozillateam/ppa
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001

Package: firefox
Pin: version 1:1snap1-0ubuntu2
Pin-Priority: -1
' | tee /etc/apt/preferences.d/mozilla-firefox
snap remove firefox
apt install -y firefox
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox
echo "Firefox install successfully"

wget https://github.com/mozilla/geckodriver/releases/download/v${GECKO_DRIVER_VERSION}/geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
tar -xvf geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
mv geckodriver /usr/bin/
chown root:root /usr/bin/geckodriver
chmod +x /usr/bin/geckodriver
echo "Geckodriver install successfully"

rm -r geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
echo "Clean up"

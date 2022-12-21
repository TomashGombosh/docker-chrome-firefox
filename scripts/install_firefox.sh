#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

GECKO_DRIVER_VERSION=$1

apt-get update
wget -O ~/Firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64"
tar xjf ~/Firefox.tar.bz2 -C /opt/
mv /usr/lib/firefox/firefox /usr/lib/firefox/firefox_backup
ln -s /opt/firefox/firefox /usr/bin/
echo "Firefox install successfully"

wget https://github.com/mozilla/geckodriver/releases/download/v${GECKO_DRIVER_VERSION}/geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
tar -xvf geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
mv geckodriver /usr/bin/
chown root:root /usr/bin/geckodriver
chmod +x /usr/bin/geckodriver
echo "Geckodriver install successfully"

rm -r geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
echo "Clean up"

#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

GECKO_DRIVER_VERSION=$1

apt-get update
add-apt-repository ppa:ubuntu-mozilla-security/ppa
apt-get update
apt install -y firefox
echo "Firefox install successfully"

apt-get update
wget https://github.com/mozilla/geckodriver/releases/download/v${GECKO_DRIVER_VERSION}/geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
tar -xvf geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
mv geckodriver /usr/bin/
chown root:root /usr/bin/geckodriver
chmod +x /usr/bin/geckodriver
echo "Geckodriver install successfully"

rm -r geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
echo "Clean up"

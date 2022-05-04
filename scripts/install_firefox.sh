#!/bin/bash
GECKO_DRIVER_VERSION=$1

rm -rf /var/lib/apt/lists/*
echo "deb http://deb.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list.d/debian.list
apt-get update
apt-get install -y --no-install-recommends firefox
echo "Firefox install successfully"

wget https://github.com/mozilla/geckodriver/releases/download/v${GECKO_DRIVER_VERSION}/geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
tar -xvf geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
mv geckodriver /usr/local/bin/
chown root:root /usr/bin/geckodriver
chmod +x /usr/bin/geckodriver
echo "Geckodriver install successfully"

rm -r geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
rm -rf /var/lib/apt/lists/*
echo "Clean up"
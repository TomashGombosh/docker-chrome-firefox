#!/bin/bash
GECKO_DRIVER_VERSION=$1
apt-get update
apt-get install firefox
echo "Firefox install successfully"

wget https://github.com/mozilla/geckodriver/releases/download/v${GECKO_DRIVER_VERSION}/geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
tar -xvf geckodriver-v${GECKO_DRIVER_VERSION}-linux64.tar.gz
mv geckodriver /usr/local/bin/
chown root:root /usr/bin/geckodriver
chmod +x /usr/bin/geckodriver

echo $(geckodriver --version)
echo "Firefox install successfully"
#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

CHROME_DRIVER_VERSION=$1

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt-get install -y ./google-chrome-stable_current_amd64.deb
echo "Chrome install successfully"

wget https://chromedriver.storage.googleapis.com/${CHROME_DRIVER_VERSION}/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
mv chromedriver /usr/bin/chromedriver
chown root:root /usr/bin/chromedriver
chmod +x /usr/bin/chromedriver
echo "Chromedriver install successfully"

rm -r google-chrome-stable_current_amd64.deb
rm -r chromedriver_linux64.zip
echo "Clean up"
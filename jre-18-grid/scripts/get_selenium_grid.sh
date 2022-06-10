#!/bin/bash
SELENIUM_VERSION=$1
SELENIUM_DOWNLOAD_VERSION=$(echo $SELENIUM_VERSION | cut -d'.' -f 1-2)
wget https://github.com/SeleniumHQ/selenium/releases/download/selenium-$SELENIUM_DOWNLOAD_VERSION.0/selenium-server-$SELENIUM_VERSION.jar
chmod +x selenium-server-$SELENIUM_VERSION.jar

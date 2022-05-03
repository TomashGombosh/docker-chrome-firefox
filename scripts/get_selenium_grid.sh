#!/bin/bash
SELENIUM_VERSION=$1
wget https://github.com/SeleniumHQ/selenium/releases/download/selenium-4.1.0/selenium-server-$SELENIUM_VERSION.jar
chmod +x selenium-server-$SELENIUM_VERSION.jar

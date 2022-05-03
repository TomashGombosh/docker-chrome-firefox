#!/bin/bash

echo "HUB_URL -> ${HUB_URL}"
echo "SELENIUM_VERSION -> ${SELENIUM_VERSION}"
echo "SESSION -> ${SESSION}"

java -jar selenium-server-${SELENIUM_VERSION}.jar node --hub ${HUB_URL} --config config.toml 
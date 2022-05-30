#!/bin/bash

echo "HUB_URL -> ${HUB_URL}"
echo "SELENIUM_VERSION -> ${SELENIUM_VERSION}"
echo "TIMEOUT -> ${TIMEOUT}"

if [[ $TIMEOUT == "" ]];
then
    echo "Without timeout"
    java -jar selenium-server-${SELENIUM_VERSION}.jar node --hub ${HUB_URL}
else
    echo "With timeout"
    java -jar selenium-server-${SELENIUM_VERSION}.jar node --hub ${HUB_URL} &
    sleep $TIMEOUT
    kill "$!"
fi

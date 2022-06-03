#!/bin/bash

echo "HUB_URL -> ${HUB_URL}"
echo "SELENIUM_VERSION -> ${SELENIUM_VERSION}"
echo "TIMEOUT -> ${TIMEOUT}"
echo "NODE_IP Address -> ${NODE_IP}"

if [[ $TIMEOUT == "" && $NODE_IP == "" ]] ;then
    echo "Without timeout and with node host by default"
    java -jar selenium-server-${SELENIUM_VERSION}.jar node --hub ${HUB_URL}
elif [[ $NODE_IP != "" ]] ;then
    echo "Without timeout and with node host from env value"
    java -jar selenium-server-${SELENIUM_VERSION}.jar node --hub ${HUB_URL} --bind-host false --host ${NODE_IP}
else
    echo "With timeout"
    java -jar selenium-server-${SELENIUM_VERSION}.jar node --hub ${HUB_URL} --bind-host false --host ${NODE_IP} &
    sleep $TIMEOUT
    kill "$!"
fi

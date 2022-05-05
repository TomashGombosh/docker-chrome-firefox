#!/bin/bash
apt-get update
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
deb https://deb.nodesource.com/node_14.x focal main
deb-src https://deb.nodesource.com/node_14.x focal main
apt-get -y install nodejs
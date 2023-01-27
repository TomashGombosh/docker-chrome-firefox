#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
MAVEN_VERSION=$1

apt-get install -y maven
rm -r /usr/share/maven
wget https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz
tar xvf apache-maven-${MAVEN_VERSION}-bin.tar.gz
mkdir /usr/share/maven
cp -rf apache-maven-${MAVEN_VERSION}/* /usr/share/maven
mvn -version
rm -r apache-maven-${MAVEN_VERSION}-bin.tar.gz

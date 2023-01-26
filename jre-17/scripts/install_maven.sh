#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

wget https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz
tar xvf apache-maven-${MAVEN_VERSION}-bin.tar.gz
mkdir /usr/share/maven
cp -r apache-maven-${MAVEN_VERSION}/* /usr/share/maven

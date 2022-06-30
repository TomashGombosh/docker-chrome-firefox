#!/bin/bash

expectedValue=$1

string=$(java --version)

version=$(echo "$string" | cut -d'.' -f 1 | tr -d -c 0-9)
if [[ "$version" =~ "$expectedValue" ]];
then 
    exit 0
else 
    echo "The java version should be $expectedValue, but was $version"
    exit 1
fi

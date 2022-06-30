#!/bin/bash

expectedValue=$1

version=$(chromedriver --version)

if [[ "$version" =~ "$expectedValue" ]];
then 
    exit 0
else 
    echo "The chromedriver version should be $expectedValue, but was $version"
    exit 1
fi

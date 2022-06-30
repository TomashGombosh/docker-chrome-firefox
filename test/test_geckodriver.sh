#!/bin/bash

expectedValue=$1

version=$(geckodriver --version)

if [[ "$version" =~ "$expectedValue" ]];
then 
    exit 0
else 
    echo "The geckodriver version should be $expectedValue, but was $version"
    exit 1
fi

#!/bin/bash
version=$(google-chrome --version)

if [[ -z "$version" ]];
then 
    echo "The chrome version should be $expectedValue, but was $version"
    exit 1
else 
    exit 0
fi

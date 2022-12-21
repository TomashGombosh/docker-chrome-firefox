#!/bin/bash
browser=$1

version=$($browser --version)

if [[ -z "$version" ]];
then 
    echo "The $browser version should be $expectedValue, but was $version"
    exit 1
else 
    exit 0
fi

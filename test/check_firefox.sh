#!/bin/bash
version=$(xvfb-run firefox --version)

if [[ -z "$version" ]];
then 
    echo "The firefox version should be $expectedValue, but was $version"
    exit 1
else 
    exit 0
fi

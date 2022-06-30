#!/bin/bash
FOLDER=$1

if [[ -z "$TEST_FOLDER" ]];
then
    cp -R ./scripts ./$FOLDER/
else
    cp -R ./scripts ./$TEST_FOLDER/
fi

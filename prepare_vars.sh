#!/bin/bash

case "$CIRCLE_NODE_INDEX" in
    0) 
        TEST_FOLDER='jre-11' 
        JAVA_TEST_VERSION='11'
    ;;
    1) 
        TEST_FOLDER='jre-17' 
        JAVA_TEST_VERSION='17'    
    ;;
    2) 
        TEST_FOLDER='jre-17-grid' 
        JAVA_TEST_VERSION='17'  
    ;;
    3) 
        TEST_FOLDER='jre-18' 
        JAVA_TEST_VERSION='18' 
    ;;
    4) 
        TEST_FOLDER='jre-18-grid' 
        JAVA_TEST_VERSION='18'
    ;;
    *) echo "Unexpected CONTAINER_INDEX $CIRCLE_NODE_INDEX" && exit 1 ;;
esac

# prepare env vars
echo 'export TEST_FOLDER="'${TEST_FOLDER}'"' >> $BASH_ENV
echo 'export JAVA_TEST_VERSION="'${JAVA_TEST_VERSION}'"' >> $BASH_ENV
echo 'export JAVA_TEST_VERSION="'${JAVA_TEST_VERSION}'"' >> $BASH_ENV

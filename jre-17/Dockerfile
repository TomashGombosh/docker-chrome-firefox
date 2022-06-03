FROM ubuntu:focal

ARG CHROMEDRIVER_VERSION="101.0.4951.41"
ARG GECKODRIVER_VERSION="0.31.0"
WORKDIR /usr/home/ubuntu

COPY ./scripts/ scripts/
RUN apt-get update &&\
    apt-get install dos2unix &&\
    find ./scripts -type f -print0 | xargs -0 dos2unix &&\
    sh ./scripts/install_dependencies.sh &&\
    sh ./scripts/install_chrome.sh $CHROMEDRIVER_VERSION &&\
    sh ./scripts/install_firefox.sh $GECKODRIVER_VERSION &&\
    apt-get install -y openjdk-17-jre-headless=17.0.3+7-0ubuntu0.20.04.1 --no-install-recommends

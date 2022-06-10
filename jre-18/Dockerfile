FROM ubuntu:impish

ARG CHROMEDRIVER_VERSION
ARG GECKODRIVER_VERSION
WORKDIR /usr/home/ubuntu

COPY ./scripts/ scripts/
RUN apt-get update &&\
    apt-get install dos2unix &&\
    find ./scripts -type f -print0 | xargs -0 dos2unix &&\
    sh ./scripts/install_dependencies.sh &&\
    sh ./scripts/install_chrome.sh $CHROMEDRIVER_VERSION &&\
    sh ./scripts/install_firefox.sh $GECKODRIVER_VERSION &&\
    apt-get install -y openjdk-18-jre-headless=18~15ea-4 --no-install-recommends

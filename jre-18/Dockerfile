FROM ubuntu:impish

ARG CHROMEDRIVER_VERSION="101.0.4951.41"
ARG GECKODRIVER_VERSION="0.31.0"
WORKDIR /usr/home/ubuntu

COPY ./scripts/ scripts/
RUN chmod -R +x ./scripts &&\ 
    ./scripts/install_dependencies.sh &&\ 
    ./scripts/install_chrome.sh $CHROMEDRIVER_VERSION &&\ 
    ./scripts/install_firefox.sh $GECKODRIVER_VERSION &&\
    apt-get install -y openjdk-18-jre-headless --no-install-recommends

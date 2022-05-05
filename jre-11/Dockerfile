FROM ubuntu:focal

ARG CHROMEDRIVER_VERSION="101.0.4951.41"
ARG GECKODRIVER_VERSION="0.3.0"

COPY ./scripts/ scripts/
RUN chmod -R +x ./scripts
RUN ./scripts/install_dependencies.sh
RUN ./scripts/install_chrome.sh $CHROMEDRIVER_VERSION 
RUN ./scripts/install_firefox.sh $GECKODRIVER_VERSION
RUN apt-get install -y openjdk-11-jre-headless

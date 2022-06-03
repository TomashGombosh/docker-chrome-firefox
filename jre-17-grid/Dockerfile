FROM ubuntu:focal

ARG SELENIUM_GRID_VERSION="4.1.4"
ARG CHROMEDRIVER_VERSION="101.0.4951.41"
ARG GECKODRIVER_VERSION="0.31.0"
WORKDIR /usr/home/ubuntu

ENV HUB_URL="http://localhost:4444"
ENV SELENIUM_VERSION=${SELENIUM_GRID_VERSION}
ENV TIMEOUT=${TIMEOUT}
ENV NODE_IP=${NODE_IP}

COPY ./scripts/ scripts/
COPY ./entrypoint.sh entrypoint.sh 
RUN apt-get update &&\
    apt-get install dos2unix &&\
    find ./scripts -type f -print0 | xargs -0 dos2unix &&\
    dos2unix ./entrypoint.sh &&\
    sh ./scripts/install_dependencies.sh &&\
    sh ./scripts/install_chrome.sh $CHROMEDRIVER_VERSION &&\
    sh ./scripts/install_firefox.sh $GECKODRIVER_VERSION &&\
    sh ./scripts/get_selenium_grid.sh $SELENIUM_GRID_VERSION &&\
    apt-get install -y openjdk-17-jre-headless --no-install-recommends &&\
CMD ["sh", "-c", "./entrypoint.sh"]
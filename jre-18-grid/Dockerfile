FROM ubuntu:kinetic

ARG SELENIUM_GRID_VERSION
ARG CHROMEDRIVER_VERSION
ARG GECKODRIVER_VERSION
WORKDIR /usr/home/ubuntu

ENV HUB_URL="http://localhost:4444"
ENV SELENIUM_VERSION=${SELENIUM_GRID_VERSION}
ENV SESSION=2

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
    apt-get install -y openjdk-18-jre-headless --no-install-recommends &&\
    rm -r scripts
CMD ["sh", "-c", "./entrypoint.sh"]
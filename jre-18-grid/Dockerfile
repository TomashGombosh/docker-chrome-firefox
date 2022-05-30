FROM ubuntu:impish

ARG SELENIUM_GRID_VERSION="4.1.4"
ARG CHROMEDRIVER_VERSION="101.0.4951.41"
ARG GECKODRIVER_VERSION="0.31.0"
WORKDIR /usr/home/ubuntu

ENV HUB_URL="http://localhost:4444"
ENV SELENIUM_VERSION=${SELENIUM_GRID_VERSION}
ENV SESSION=2

COPY ./scripts/ scripts/
COPY ./entrypoint.sh entrypoint.sh 
RUN chmod -R +x ./scripts &&\
    chmod +x entrypoint.sh &&\
    ./scripts/install_dependencies.sh &&\
    ./scripts/install_chrome.sh $CHROMEDRIVER_VERSION &&\
    ./scripts/install_firefox.sh $GECKODRIVER_VERSION &&\
    ./scripts/get_selenium_grid.sh $SELENIUM_GRID_VERSION &&\
    apt-get install -y openjdk-18-jre-headless --no-install-recommends
CMD ["sh", "-c", "./entrypoint.sh"]
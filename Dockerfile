FROM ubuntu:focal

ARG SELENIUM_GRID_VERSION="4.1.4"
ARG CHROMEDRIVER_VERSION="100.0.4896.60"
ARG GECKODRIVER_VERSION="0.3.1"

ENV HUB_URL="http://localhost:4444"
ENV SELENIUM_VERSION=${SELENIUM_GRID_VERSION}
ENV SESSION=2

COPY ./scripts/ scripts/
COPY ./entrypoint.sh entrypoint.sh 
COPY ./config.toml config.toml 
RUN chmod -R +x ./scripts
RUN chmod +x entrypoint.sh 
RUN ./scripts/install_dependencies.sh
RUN ./scripts/install_chrome.sh $CHROMEDRIVER_VERSION
RUN ./scripts/install_firefox.sh $GECKODRIVER_VERSION
RUN ./scripts/get_selenium_grid.sh $SELENIUM_GRID_VERSION
CMD ./entrypoint.sh 
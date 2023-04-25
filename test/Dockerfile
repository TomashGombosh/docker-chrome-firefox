FROM chrome-firefox:local

ARG JAVA_VERSION
ARG CHROMEDRIVER_VERSION
ARG GECKODRIVER_VERSION
WORKDIR /usr/home/ubuntu

COPY ./test_java.sh test_java.sh
COPY ./test_chromedriver.sh test_chromedriver.sh
COPY ./test_geckodriver.sh test_geckodriver.sh
COPY ./check_firefox.sh check_firefox.sh
COPY ./check_chrome.sh check_chrome.sh
RUN ./test_java.sh ${JAVA_VERSION} &&\
    ./test_chromedriver.sh ${CHROMEDRIVER_VERSION} &&\
    ./test_geckodriver.sh ${GECKODRIVER_VERSION} &&\
    ./check_chrome.sh &&\
    ./check_firefox.sh
FROM chrome-firefox:local

ARG JAVA_VERSION
ARG CHROMEDRIVER_VERSION
ARG GECKODRIVER_VERSION
WORKDIR /usr/home/ubuntu

COPY ./test_java.sh test_java.sh
COPY ./test_chromedriver.sh test_chromedriver.sh
COPY ./test_geckodriver.sh test_geckodriver.sh
COPY ./check_browser.sh check_browser.sh
RUN sh ./test_java.sh ${JAVA_VERSION} &&\
    sh ./test_chromedriver.sh ${CHROMEDRIVER_VERSION} &&\
    sh ./test_geckodriver.sh ${GECKODRIVER_VERSION} &&\
    sh ./check_browser.sh google-chrome &&\
    sh ./check_browser.sh firefox
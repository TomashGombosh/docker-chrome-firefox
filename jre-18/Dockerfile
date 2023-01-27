FROM ubuntu:jammy

ARG CHROMEDRIVER_VERSION
ARG GECKODRIVER_VERSION
ARG MAVEN_VERSION

WORKDIR /usr/home/ubuntu

ENV JAVA_HOME='/usr/lib/jvm/java-18-openjdk-amd64'
ENV MAVEN_HOME='/usr/share/maven'
ENV M2_HOME='/usr/share/maven'

COPY ./scripts/ scripts/
RUN apt-get update &&\
    apt-get install dos2unix &&\
    find ./scripts -type f -print0 | xargs -0 dos2unix &&\
    sh ./scripts/install_dependencies.sh &&\
    sh ./scripts/install_chrome.sh $CHROMEDRIVER_VERSION &&\
    sh ./scripts/install_firefox.sh $GECKODRIVER_VERSION &&\
    apt-get install -y openjdk-18-jre-headless --no-install-recommends &&\
    sh ./scripts/install_maven.sh $MAVEN_VERSION &&\
    rm -r scripts

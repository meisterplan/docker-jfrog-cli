FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get clean

RUN curl -Lo /usr/bin/jfrog-cli https://api.bintray.com/content/jfrog/jfrog-cli-go/$latest/jfrog-cli-linux-386/jfrog?bt_package=jfrog-cli-linux-386
RUN chmod +x /usr/bin/jfrog-cli

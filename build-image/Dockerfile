#
# build image for java projects
#
FROM alpine:latest
FROM eviles/alpine-oracle-jdk8

LABEL maintainer="peter.szatmary@gmail.com"

ENV MAVEN_VERSION 3.6.0
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV M2_HOME /home/etc/apache-maven-$MAVEN_VERSION
ENV M2 $M2_HOME/bin
ENV PATH $PATH:$M2

ARG environment
ARG app

RUN apk --update add bash git wget

RUN adduser psz -h /home/psz -s /bin/bash -D
USER psz

RUN mkdir /home/psz/etc
WORKDIR /home/psz/etc

RUN wget http://tux.rainside.sk/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz
RUN tar -xvf apache-maven-$MAVEN_VERSION-bin.tar.gz
RUN rm -r apache-maven-$MAVEN_VERSION-bin.tar.gz

RUN echo 'Building image for' ${environment} ${app}
CMD ["/bin/sh"]
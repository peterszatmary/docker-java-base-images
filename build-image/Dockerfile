#
# build image for java projects
#
FROM eviles/alpine-oracle-jdk8

LABEL maintainer="peter.szatmary@gmail.com"

ENV MAVEN_VERSION 3.6.0
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV TZ SK
ENV MAVEN_HOME /usr/share/maven

ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries

RUN apk --update add bash git wget

RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
  && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
  && rm -f /tmp/apache-maven.tar.gz \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

RUN adduser psz -h /home/psz -s /bin/bash -D
USER psz
WORKDIR /home/psz

CMD ["/bin/sh"]
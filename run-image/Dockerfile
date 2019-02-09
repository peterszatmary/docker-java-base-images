#
# run image for java applications
#
FROM alpine:latest
FROM eviles/alpine-oracle-jdk8

LABEL maintainer="peter.szatmary@gmail.com"

ARG environment
ARG app

RUN apk --update add bash git

RUN adduser psz -h /home/psz -s /bin/bash -D
USER psz

RUN mkdir /home/psz/app
WORKDIR /home/psz/app

# git clone, pre properties
RUN git clone https://github.com/peterszatmary/app_props
RUN mv app_props/${environment} .
RUN rm -r app_props

RUN ls -la /home/psz/app
RUN java -version
RUN echo 'Building image for' ${environment} ${app}
CMD ["/bin/sh"]
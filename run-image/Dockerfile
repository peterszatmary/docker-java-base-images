#
# run image for java applications
#
FROM lwieske/java-8:jdk-8u191-slim

LABEL maintainer="peter.szatmary@gmail.com"

ARG environment
ARG app

ENV TZ SK

RUN apk --update add bash git

RUN adduser psz -h /home/psz -s /bin/bash -D
USER psz

RUN mkdir /home/psz/app
WORKDIR /home/psz/app

# git clone app properties into vm
RUN git clone https://github.com/peterszatmary/app_props
RUN mv app_props/${environment}/* /home/psz/app
RUN rm -r app_props

RUN ls -la /home/psz/app
RUN java -version
RUN echo 'Building image for' ${environment} ${app}
CMD ["/bin/sh"]
FROM alpine:3.11
MAINTAINER Denis Itskovich

USER root
COPY root/ /
WORKDIR /

RUN mkdir /config /downloads /share /watch
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ transmission-daemon
RUN chmod 755 /entrypoint.sh

ENTRYPOINT /entrypoint.sh

EXPOSE 9091 51413

VOLUME /config /downloads /share /watch

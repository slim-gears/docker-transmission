FROM alpine:3.8

USER root
COPY root/ /

RUN mkdir /config /downloads /share /watch
RUN apk add --no-cache transmission-daemon
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 9091 51413

VOLUME /config /downloads /share /watch


FROM alpine:3.8

USER root
ADD root /

RUN mkdir /config /downloads /share /watch
RUN apk add --no-cache tranmission-daemon
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 9091 51413

VOLUME /config /downloads /share /watch

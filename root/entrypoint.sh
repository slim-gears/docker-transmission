#!/bin/sh


mkdir -p /downloads/complete /downloads/incomplete /watch
[[ ! -f /config/settings.json ]] && cp /defaults/settings.json /config/settings.json

echo Starting transmission
transmission-daemon -g /config -w /downloads -e /dev/stdout --log-debug
chmod 666 /config/settings.json

tail -f /dev/null

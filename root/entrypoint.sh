#!/bin/sh


mkdir -p /downloads/complete /downloads/incomplete /watch
[[ ! -f /config/settings.json ]] && cp /defaults/settings.json /config/settings.json

echo Starting transmission
transmission-daemon -g /config -w /downloads -e /dev/stdout --log-debug
tail -f /dev/null

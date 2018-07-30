#!/bin/sh

mkdir -p /downloads/{complete,incomplete} /watch
[[ ! -f /config/settings.json ]] && cp /defaults/settings.json /config/settings.json

transmission-daemon -g /config -w /downloads

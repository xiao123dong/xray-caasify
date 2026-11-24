#!/bin/sh
PORT=${PORT:-8080}
sed -i "s/__PORT__/$PORT/g" /usr/local/etc/xray/config.json
exec /usr/local/bin/xray run -config /usr/local/etc/xray/config.json

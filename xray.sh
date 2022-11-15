#!/bin/sh
if [ ! -f UUID ]; then
  UUID="96729962-ee8e-4991-a22c-c80744ea3605"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


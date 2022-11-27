#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ed965a28-4adf-453d-9795-b5700a596af1"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


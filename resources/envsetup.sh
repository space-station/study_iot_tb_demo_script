#!/bin/sh

# check if 

# Set ThingsBoard host to "demo.thingsboard.io" or "localhost"
# export THINGSBOARD_HOST=HOST_NAME
if [ -z "$THINGSBOARD_HOST" ]; then
    echo "Please input THINGSBOARD_HOST:"
    read -t 20 -p "  " THINGSBOARD_HOST
fi
echo THINGSBOARD_HOST=$THINGSBOARD_HOST

# protocol
THINGSBOARD_PROTOCOL='http'
echo THINGSBOARD_PROTOCOL=$THINGSBOARD_PROTOCOL

# port
if [ "$THINGSBOARD_PROTOCOL" == "https" ]; then
    export THINGSBOARD_PORT=443
else
    export THINGSBOARD_PORT=8080
fi
echo THINGSBOARD_PORT=$THINGSBOARD_PORT

# things board url
export THINGSBOARD_URL=$THINGSBOARD_PROTOCOL://$THINGSBOARD_HOST:$THINGSBOARD_PORT
echo THINGSBOARD_URL=$THINGSBOARD_URL


# Device properties.
export DEVICE_ID=408e6230-a49b-11e9-8bb9-7db0b764404d
echo DEVICE_ID=$DEVICE_ID
export DEVICE_ACCESS_TOKEN=JMnxnmp7CVIS6arycicW
echo DEVICE_ACCESS_TOKEN=$DEVICE_ACCESS_TOKEN

# Tenant properties

export TENANT_ID=5f201ab0-a471-11e9-bdaa-3b9236e9248c
echo TENANT_ID=$TENANT_ID

# set node env
# npm list -g
export NODE_PATH="/usr/local/lib/node_modules"

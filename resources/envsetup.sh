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
THINGSBOARD_PROTOCOL='https'
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
export DEVICE_ID=a7d2a3f0-4584-11e9-bd17-4b4d1e98c69a
echo DEVICE_ID=$DEVICE_ID
export DEVICE_ACCESS_TOKEN=UuRqeHaXPOLnVkfKOFfh
echo DEVICE_ACCESS_TOKEN=$DEVICE_ACCESS_TOKEN


# set node env
# npm list -g
export NODE_PATH="/usr/local/lib/node_modules"

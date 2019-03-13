#!/bin/sh

# check if 

# Set ThingsBoard host to "demo.thingsboard.io" or "localhost"
# export THINGSBOARD_HOST=HOST_NAME
if [ -z "$THINGSBOARD_HOST" ]; then
    echo "Please input THINGSBOARD_HOST:"
    read -t 20 -p "  " THINGSBOARD_HOST
fi
echo THINGSBOARD_HOST=$THINGSBOARD_HOST

# port
export THINGSBOARD_PORT=8080
#export THINGSBOARD_PORT=443
echo THINGSBOARD_PORT=$THINGSBOARD_PORT

# protocol
THINGSBOARD_PROTOCOL='http'
#THINGSBOARD_PROTOCOL='https'
echo THINGSBOARD_PROTOCOL=$THINGSBOARD_PROTOCOL

# things board url
export THINGSBOARD_URL=$THINGSBOARD_PROTOCOL://$THINGSBOARD_HOST:$THINGSBOARD_PORT
echo THINGSBOARD_URL=$THINGSBOARD_URL


# Replace YOUR_ACCESS_TOKEN with one from Device details panel.
export ACCESS_TOKEN=UuRqeHaXPOLnVkfKOFfh
echo ACCESS_TOKEN=$ACCESS_TOKEN

# set node env
# npm list -g
export NODE_PATH="/usr/local/lib/node_modules"

#!/bin/sh

. ./envsetup.sh

# Publish serial number and firmware version attributes
mosquitto_pub -d -h "$THINGSBOARD_HOST" -t "v1/devices/me/attributes" -u "$DEVICE_ACCESS_TOKEN" -f "data/attributes-data.json"
# Publish timeseries data as an object without timestamp (server-side timestamp will be used)
mosquitto_pub -d -h "$THINGSBOARD_HOST" -t "v1/devices/me/telemetry" -u "$DEVICE_ACCESS_TOKEN" -f "data/telemetry-data.json"

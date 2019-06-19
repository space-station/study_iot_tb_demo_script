#!/bin/sh

. ./envsetup.sh

# Read serial number and firmware version attributes
#ATTRIBUTES=$( cat data/attributes-data.json )
#export ATTRIBUTES

# Read timeseries data as an object without timestamp (server-side timestamp will be used)
#TELEMETRY=$( cat data/telemetry-data.json )
#export TELEMETRY

# publish attributes and telemetry data via mqtt client
node js/handleRPC.js

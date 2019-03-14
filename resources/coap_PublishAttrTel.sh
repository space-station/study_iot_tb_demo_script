# Publish serial number and firmware version attributes
cat data/attributes-data.json | coap post coap://$THINGSBOARD_HOST/api/v1/$DEVICE_ACCESS_TOKEN/attributes
# Publish timeseries data as an object without timestamp (server-side timestamp will be used)
cat data/telemetry-data.json | coap post coap://$THINGSBOARD_HOST/api/v1/$DEVICE_ACCESS_TOKEN/telemetry

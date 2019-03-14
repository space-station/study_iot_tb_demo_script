# Publish serial number and firmware version attributes
API_URL=$THINGSBOARD_URL/api/v1/$ACCESS_TOKEN/attributes
curl -v -X POST -d @data/attributes-data.json "$API_URL" --header "Content-Type:application/json"
# Publish timeseries data as an object without timestamp (server-side timestamp will be used)
API_URL=$THINGSBOARD_URL/api/v1/$ACCESS_TOKEN/telemetry
curl -v -X POST -d @data/telemetry-data.json "$API_URL" --header "Content-Type:application/json"


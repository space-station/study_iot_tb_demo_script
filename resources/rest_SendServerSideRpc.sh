# Publish serial number and firmware version attributes
API_URL=$THINGSBOARD_URL/api/plugins/rpc/twoway/$DEVICE_ID
curl -v -X POST -d @data/rpc-request-data.json "$API_URL" \
--header "Content-Type:application/json" \
--header 'Accept: application/json' \
--header "X-Authorization: Bearer $JWT_TOKEN" \



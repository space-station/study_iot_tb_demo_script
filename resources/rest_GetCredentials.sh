# Get credentials for device
API_URL=$THINGSBOARD_URL/api/device/$DEVICE_ID/credentials
curl -v -X GET "$API_URL" \
--header 'Accept: application/json' \
--header "X-Authorization: Bearer $JWT_TOKEN" \
| jq


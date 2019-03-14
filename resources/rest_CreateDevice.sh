API_URL=$THINGSBOARD_URL/api/device
curl -v -X POST -d @data/device-data.json "$API_URL" \
--header "Content-Type:application/json" \
--header "X-Authorization: Bearer $JWT_TOKEN" \
| jq

echo

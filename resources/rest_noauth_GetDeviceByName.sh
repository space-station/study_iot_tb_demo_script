API_URL=$THINGSBOARD_URL/api/noauth/devices
curl -v -X POST -d @data/device-data-with-tenant.json "$API_URL" \
--header "Content-Type:application/json" \
| jq

echo

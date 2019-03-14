API_URL=$THINGSBOARD_URL/api/asset
curl -v -X POST -d @data/asset-data.json "$API_URL" \
--header "Content-Type:application/json" \
--header "X-Authorization: Bearer $JWT_TOKEN" \
| jq

echo

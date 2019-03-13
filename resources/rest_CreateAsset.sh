curl -v -X POST -d @data/asset-data.json $THINGSBOARD_URL/api/asset \
--header "Content-Type:application/json" \
--header "X-Authorization: Bearer $JWT_TOKEN"

echo

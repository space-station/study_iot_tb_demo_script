curl -v -X POST -d @create-asset.json http://$THINGSBOARD_HOST:$THINGSBOARD_PORT/api/asset \
--header "Content-Type:application/json" \
--header "X-Authorization: Bearer $JWT_TOKEN"

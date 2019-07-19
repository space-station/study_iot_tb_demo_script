API_URL=$THINGSBOARD_URL/api/customer
RESPONSE=`curl -v -X POST -d @data/customer-data.json "$API_URL" --header "Content-Type:application/json" --header "X-Authorization: Bearer $JWT_TOKEN"`
echo $RESPONSE | jq

CUSTOMER_ID=`CUSTOMER_RESPONSE=$RESPONSE node js/parse_customer_resp.js`
echo CUSTOMER_ID=$CUSTOMER_ID

export CUSTOMER_ID
echo

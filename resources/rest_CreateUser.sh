API_URL=$THINGSBOARD_URL/api/user?sendActivationMail=false
RESPONSE=`curl -v -X POST -d @data/user-data.json "$API_URL" --header "Content-Type:application/json" --header "X-Authorization: Bearer $JWT_TOKEN"`
echo $RESPONSE | jq

USER_ID=`USER_RESPONSE=$RESPONSE node js/parse_user_resp.js`
echo USER_ID=$USER_ID

export USER_ID
echo

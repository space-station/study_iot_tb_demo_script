API_URL=${THINGSBOARD_URL}/api/auth/login
RESPONSE=`curl -X POST -d @data/user-pwd-data.json "$API_URL" --header 'Content-Type: application/json' --header 'Accept: application/json'`
echo $RESPONSE | jq

JWT_TOKEN=`TOKEN_RESPONSE=$RESPONSE node js/parse_token_resp.js`
echo ===== JWT_TOKEN =====
echo $JWT_TOKEN
echo =====================
export JWT_TOKEN

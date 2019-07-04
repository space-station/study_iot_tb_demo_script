API_URL=${THINGSBOARD_URL}/api/auth/login
RESPONSE=`curl -X POST -d @data/user-pwd-data.json "$API_URL" --header 'Content-Type: application/json' --header 'Accept: application/json'`
echo $RESPONSE | jq

JWT_TOKEN=`TOKEN_RESPONSE=$RESPONSE node js/parse_token_resp.js`
JWT_REFRESH_TOKEN=`TOKEN_RESPONSE=$RESPONSE node js/parse_refreshToken_resp.js`

#echo ===== JWT_TOKEN =====
#echo $JWT_TOKEN

TXT=`TOKEN_TXT=$JWT_TOKEN node js/decode_jwt_token.js`
echo $TXT
TXT=`TOKEN_TXT=$JWT_REFRESH_TOKEN node js/decode_jwt_token.js`
echo $TXT

echo =====================
export JWT_TOKEN
export JWT_REFRESH_TOKEN

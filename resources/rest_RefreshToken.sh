API_URL=${THINGSBOARD_URL}/api/auth/token
RESPONSE=`curl -X POST -d "{\"refreshToken\":\"$JWT_REFRESH_TOKEN\"}" "$API_URL" --header 'Content-Type: application/json' --header 'Accept: application/json'`

echo $RESPONSE | jq

JWT_TOKEN=`TOKEN_RESPONSE=$RESPONSE node js/parse_token_resp.js`
JWT_REFRESH_TOKEN=`TOKEN_RESPONSE=$RESPONSE node js/parse_refreshToken_resp.js`

echo ===== JWT_TOKEN =====
echo $JWT_TOKEN
echo ===== JWT_REFRESH_TOKEN =====
echo $JWT_REFRESH_TOKEN
echo =====================
export JWT_TOKEN
export JWT_REFRESH_TOKEN

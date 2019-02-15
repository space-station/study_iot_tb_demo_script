API_URL=http://${THINGSBOARD_URL}/api/auth/login
RESPONSE=`curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{"username":"tenant@thingsboard.org", "password":"tenant"}' "$API_URL"`

JWT_TOKEN=`TOKEN_RESPONSE=$RESPONSE node parse_token_resp.js`
echo ===== JWT_TOKEN =====
echo $JWT_TOKEN
echo =====================
export JWT_TOKEN

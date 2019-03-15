# Get time series keys 
API_URL=$THINGSBOARD_URL/api/plugins/telemetry/DEVICE/$DEVICE_ID/keys/timeseries
curl -v -X GET "$API_URL" \
--header 'Accept: application/json' \
--header "X-Authorization: Bearer $JWT_TOKEN" \
| jq

#echo
# Get latest time series value
#API_URL=$THINGSBOARD_URL/api/plugins/telemetry/DEVICE/$DEVICE_ID/values/timeseries
# Get latest time series value for comma separated list of keys
#API_URL=$THINGSBOARD_URL/api/plugins/telemetry/DEVICE/$DEVICE_ID/values/timeseries?keys=active,temperature,humidity
#curl -v -X GET "$API_URL" \
#--header 'Accept: application/json' \
#--header "X-Authorization: Bearer $JWT_TOKEN" \
#| jq

echo
# Get latest time series value, from 2019/1/1 to 2020/1/1
API_URL=$THINGSBOARD_URL/api/plugins/telemetry/DEVICE/$DEVICE_ID/values/timeseries?keys=active,temperature,humidity\&startTs=1546272000000\&endTs=1577808000000\&limit=10
curl -v -X GET "$API_URL" \
--header 'Accept: application/json' \
--header "X-Authorization: Bearer $JWT_TOKEN" \
| jq

echo
# Get latest time series value, from 2019/1/1 to 2020/1/1, calc avg, NOT RESPONDING
#API_URL=$THINGSBOARD_URL/api/plugins/telemetry/DEVICE/$DEVICE_ID/values/timeseries?keys=active,temperature,humidity\&startTs=1546272000000\&endTs=1577808000000\&limit=10\&interval=60000\&agg=AVG
#curl -v -X GET "$API_URL" \
#--header 'Accept: application/json' \
#--header "X-Authorization: Bearer $JWT_TOKEN" \
#| jq


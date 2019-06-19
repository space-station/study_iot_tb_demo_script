var mqtt = require('mqtt');

console.log('Handling Server Side RPC from %s using access token: %s', process.env.THINGSBOARD_HOST, process.env.DEVICE_ACCESS_TOKEN);

var client  = mqtt.connect('mqtt://'+process.env.THINGSBOARD_HOST,{
    username: process.env.DEVICE_ACCESS_TOKEN
});

client.on('connect', function () {
    console.log('connected');
    client.subscribe('v1/devices/me/rpc/request/+')
});

client.on('message', function (topic, message) {
    console.log('request.topic: ' + topic);
    console.log('request.body: ' + message.toString());
    var requestId = topic.slice('v1/devices/me/rpc/request/'.length);
    //client acts as an echo service
    var obj = JSON.parse(message.toString("utf-8"));
    obj["checked"] = true;
    obj["time"] = Date().toString();
    console.log(obj);
    client.publish('v1/devices/me/rpc/response/' + requestId, JSON.stringify(obj));
});

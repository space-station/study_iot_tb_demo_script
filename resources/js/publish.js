var mqtt = require('mqtt');

console.log('Connecting to: %s using access token: %s', process.env.THINGSBOARD_HOST, process.env.DEVICE_ACCESS_TOKEN);

var client  = mqtt.connect('mqtt://'+ process.env.THINGSBOARD_HOST,{
    username: process.env.DEVICE_ACCESS_TOKEN
});

client.on('connect', function () {
    console.log('Client connected!');
    client.publish('v1/devices/me/attributes', process.env.ATTRIBUTES);
    console.log('Attributes published!');
    client.publish('v1/devices/me/telemetry', process.env.TELEMETRY);
    console.log('Telemetry published!');
    client.end();
});

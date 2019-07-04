#!/usr/bin/env node
var jwt_decode = require('jwt-decode');
txt=process.env.TOKEN_TXT;
decoded=jwt_decode(txt);
console.log(decoded);

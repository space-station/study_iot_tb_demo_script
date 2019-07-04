#!/usr/bin/env node
var jwt_decode = require('jwt-decode');
txt=process.env.TOKEN_TXT;
decoded=jwt_decode(txt);
decoded.expString=(new Date(decoded.exp * 1000)).toString();
console.log(decoded);

#!/usr/bin/env node
//console.log(process.env.TOKEN_RESPONSE);
txt=JSON.parse(process.env.CUSTOMER_RESPONSE);
console.log(txt.id.id);

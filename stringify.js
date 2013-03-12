#!/usr/bin/env node
/**
 * given a file, or data over stdin,
 * split it on newlines and emit a json array
 */
var fs = require('fs');
var file = process.argv[2] || '/dev/stdin';

var arr = fs.readFileSync(file, 'utf-8').trim().split('\n');

console.log(JSON.stringify(arr, null, 2));

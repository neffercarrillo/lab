var fs = require("fs");
var filename = process.argv[2];
var buffer = fs.readFileSync(filename);
var buffer_as_string = buffer.toString();
var split_string = buffer_as_string.split("\n");
var split_string_number = split_string.length - 1;

console.log(split_string_number);













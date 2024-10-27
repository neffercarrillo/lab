var fs = require("fs");

fs.readFile(process.argv[2],processFile);

function processFile(err,payload){
	if (err) {
		console.error(err.toString());
	} else {
		console.log(payload.toString().split("\n").length - 1)};
};

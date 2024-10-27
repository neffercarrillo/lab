var fs = require("fs");
var dir = process.argv[2];
var extension = process.argv[3];

var mymodule = require("./make-it-modular-module");

function callBackListFiles(err,data){
	if (err){
		console.err(err);
	} else {
		for (i = 0; i <  data.length; i++ ){
			console.log(data[i]);
		}
	}
}

mymodule(dir,extension,callBackListFiles);

var fs = require("fs");
var path = require("path");
var dir = process.argv[2];
var extension = process.argv[3];

function listFiles(err,files){
	if (err){
		console.error(err.toString());
	} else {
		var newfiles = files.filter(matchExtension);
		for(i = 0; i <= newfiles.length - 1; i++){
			console.log(newfiles[i]);
		};
	};
};

function matchExtension(file){
	return file && "." + extension === path.extname(file);
};

fs.readdir(dir,listFiles);








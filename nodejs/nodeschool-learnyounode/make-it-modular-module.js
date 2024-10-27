var fs = require("fs");
var path = require("path");


var listFiles = function(dir,extension,callback){
	fs.readdir(dir,function(err,data){
		if (err){
			return callback(err);
		} else {
			var filteredFiles = data.filter(function(file){
				//console.log(file && path.extname(file) === "." + extension);
				return file && path.extname(file) === "." + extension;
			});
			callback(null,filteredFiles);
		}
	}
			  );
};

module.exports = listFiles;




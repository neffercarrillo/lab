var http = require('http');
var bl = require('bl');

var consoleUrl = process.argv[2];

http.get(consoleUrl,function(res) {
	//console.log(consoleUrl);
	res.pipe(bl(function(err,data){
		console.log(data.toString().length);
		console.log(data.toString());
	}));
});


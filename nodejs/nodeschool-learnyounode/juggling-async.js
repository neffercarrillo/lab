var http = require('http');
var bl = require('bl');

responses = [];

function print_after_complete(responses){
	for(i=0;i<responses.length;i++){
		console.log(responses[i]);
	};
}


for(i=2;i<=4;i++){
	var url = process.argv[i];
	var resp = {
		url:""
	};
	http.get(process.argv[i],function(response){
		response.pipe(bl(function(err,data){
			//responses[i-2] = data.toString();
			//resp[process.argv[i]] = data.toString();
			if(data.toString() !== ""){
				resp[process.argv[i]] = data.toString();
			};
		}));
		//console.log(responses[i-2]);
	});
};



console.log(resp[process.argv[2]]);
console.log(resp[process.argv[3]]);
console.log(resp[process.argv[4]]);

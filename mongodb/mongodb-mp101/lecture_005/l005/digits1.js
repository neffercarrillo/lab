use test
db.zips.aggregate([
	{
		$project:{
			first_char: {$substr : ["$city",0,1]}
			,population:"$pop"
		}
	}
	,{
		$match:{
			$or:[
				{first_char:"1"}
				,{first_char:"2"}
				,{first_char:"3"}
				,{first_char:"4"}
				,{first_char:"5"}
				,{first_char:"6"}
				,{first_char:"7"}
				,{first_char:"8"}
				,{first_char:"9"}
				,{first_char:"0"}
			]
		}
	}
	,{
		$group:{
			_id:null
			,total_ftw:{$sum:"$population"}
		}
	}
	
])

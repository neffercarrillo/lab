use test

db.zips.aggregate([
	{
		$group:{
			_id:{state:"$state",city:"$city"}
			,zip_codes:{$push:"$_id"}
			,population:{$sum:"$pop"}
		}
	}
	,{
		$match:{
			$or:[{"_id.state":"CA"},{"_id.state":"NY"}]
			,$and:[{"population":{$gt:25000}}]
		}
	}
	,{
		$group:{
			_id:null
			,total_avg_populaton:{$avg:"$population"}
		}
	}
])

use test

db.messages.aggregate(
	{
		$unwind:"$headers.To"
	}
	,{
		$project:{
			_id:0
			,email_id:"$_id"
			,from:"$headers.From"
			,to:"$headers.To"
		}
	}
	,{
		$group:{
			_id:{
				to:"$to"
			}
		}
	}

	// ,{
	// 	$group:{
	// 		_id:{
	// 			email_id:"$email_id"
	// 			,from:"$from"
	// 		}
	// 		,occurrences:{
	// 			$sum:1
	// 		}
	// 	}
	// }
)

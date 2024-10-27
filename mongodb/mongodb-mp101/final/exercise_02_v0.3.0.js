use test

db.messages.aggregate([
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
				from:"$from"
				,to:"$to"
				,email_id:"$email_id"
			}
		}
	}
	,{
		$group:{
			_id:{
				from:"$_id.from"
				,to:"$_id.to"
			}
			,count:{
				$sum:1
			}
		}
	}
	,{
		$sort:{
			count:-1
		}
	}
]
,{allowDiskUse:true}
)

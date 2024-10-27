use test

db.grades.aggregate([
	{
		$unwind:"$scores"
	}
	,{
		$group:{
			_id:{
				student:"$student_id"
				,class:"$class_id"
				,score_type:"$scores.type"
			}
		}
	}
	,{
		$match:{
			$or:{{_id.score_type:"homework"},{_id.score_type:"exam"}}
	}
	
])

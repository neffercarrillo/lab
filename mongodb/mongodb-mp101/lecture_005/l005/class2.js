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
				,score:"$scores.score"
			}
		}
	}
	,{
		$match:{
			$or:[{"_id.score_type":"homework"},{"_id.score_type":"exam"}]}
	}
	,{
		$group:{
			_id:{
				student:"$student_id"
				,class:"$class_id"
			}
			,avg_gpa_per_student:{$avg:"$_id.score"}
		}
	}
	
])	

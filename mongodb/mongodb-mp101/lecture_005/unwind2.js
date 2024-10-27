use blog

db.posts.aggregate([
	 {$unwind:"$comments"}
	,{$group:
	  {
		  _id:{author:"$comments.author",post:"$permalink"}
		  ,comment_count_per_post:{$sum:1}
	  }
	 }
	,{$group:
	  {
		_id:"$_id.author"
		,total_comment_count:{$sum:1}		  
	  }
	}
	,{
		$sort:{"total_comment_count":1}
	}
])

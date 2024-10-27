use blog

db.posts.aggregate([
	 {$unwind:"$comments"}
	,{
		$project:
		{
			_id:0
			,"comments.author":1
			,permalink:1
		}
	}
	,{$group:
	  {
		  _id:"$comments.author"
		  ,comment_count:{$sum:1}
	  }
	 }
	/*,{$group:
	  {
		_id:"$_id.author"
		,total_comment_count:{$sum:1}		  
	  }
	}*/
	,{
		$sort:{"comment_count":-1}
	}
])

module CommentAnswersHelper
	def any_comments(answer)
		return CommentAnswer.where('answer_id = ?', answer.id).exists?
	end
end

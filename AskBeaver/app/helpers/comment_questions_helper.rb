module CommentQuestionsHelper
	def any_comments(question)
		return CommentQuestion.where('question_id = ?', question.id).exists?
	end
end

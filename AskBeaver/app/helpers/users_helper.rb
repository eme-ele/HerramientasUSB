module UsersHelper

	def get_user_email(question)
		return User.find(question.user_id).email
	end

end
module UsersHelper

	def get_user_email(object)
		return User.find(object.user_id).email
	end

end
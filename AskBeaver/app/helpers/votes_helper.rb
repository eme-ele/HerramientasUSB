module VotesHelper

	def has_voted?
		return Vote.where('user_id = ?', current_user.id).exists?

		
	end
end

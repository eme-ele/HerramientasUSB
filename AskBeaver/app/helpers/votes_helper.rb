module VotesHelper

	def has_voted?
		return Vote.where('user_id = ?', current_user.id).exists?

		
	end


	def how_many_votes_true(answer)
		return Vote.where('answer_id = ? and qualification = "t"', answer.id).count
	end

	def how_many_votes_false(answer)
		return Vote.where('answer_id = ? and qualification = "f"', answer.id).count
	end
end

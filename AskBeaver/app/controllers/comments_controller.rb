class CommentsController < ApplicationController
	def index
		@question_answer = find_question_answer
		@comments = @question_answer.comments
	end

	def create
		@question_answer = find_question_answer
		@comment = @question_answer.comments.create(params[:comment])
		redirect_to question_path(@question_answer)
	end

	private

	def find_question_answer
		params.each do |name, value|
			if name =~ /(.+)_id$/
				return $1.classify.constantize.find(value)
			end
		end
		nil
	end
		
end

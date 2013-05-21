class Comment < ActiveRecord::Base
	belongs_to :question_answer, :polymorphic => true
	attr_accessible :content
end

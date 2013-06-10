class Question < ActiveRecord::Base
  attr_accessible :content, :title
  has_many :answers
  has_many :comment_questions, :dependent => :destroy
  belongs_to :user
end

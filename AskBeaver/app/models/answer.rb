class Answer < ActiveRecord::Base
  belongs_to :question
  attr_accessible :content
  has_many :comment_answers, :dependent => :destroy

end

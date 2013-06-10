class Answer < ActiveRecord::Base
  belongs_to :question
  attr_accessible :content, :validation
  has_many :comment_answers, :dependent => :destroy
  has_many :votes, :dependent => :destroy

end

class Answer < ActiveRecord::Base
  belongs_to :question
  attr_accessible :content
  has_many :comments, :as => :question_answer

end

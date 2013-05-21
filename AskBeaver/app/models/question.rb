class Question < ActiveRecord::Base
  attr_accessible :content, :title
  has_many :answers, :dependent => :destroy
  has_many :comments, :as => :question_answer, :dependent => :destroy
end

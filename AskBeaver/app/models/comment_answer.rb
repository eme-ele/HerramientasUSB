class CommentAnswer < ActiveRecord::Base
  belongs_to :answer
  attr_accessible :content
end

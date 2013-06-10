class AddUserIdToCommentAnswers < ActiveRecord::Migration
  def change
    add_column :comment_answers, :user_id, :integer
    add_index :comment_answers, :user_id
  end
end

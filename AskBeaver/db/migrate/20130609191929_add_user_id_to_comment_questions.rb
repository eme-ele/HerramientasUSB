class AddUserIdToCommentQuestions < ActiveRecord::Migration
  def change
    add_column :comment_questions, :user_id, :integer
    add_index :comment_questions, :user_id
  end
end

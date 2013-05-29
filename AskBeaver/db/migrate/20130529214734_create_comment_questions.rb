class CreateCommentQuestions < ActiveRecord::Migration
  def change
    create_table :comment_questions do |t|
      t.string :content
      t.references :question

      t.timestamps
    end
    add_index :comment_questions, :question_id
  end
end

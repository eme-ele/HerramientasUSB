class CreateCommentAnswers < ActiveRecord::Migration
  def change
    create_table :comment_answers do |t|
      t.string :content
      t.references :answer

      t.timestamps
    end
    add_index :comment_answers, :answer_id
  end
end

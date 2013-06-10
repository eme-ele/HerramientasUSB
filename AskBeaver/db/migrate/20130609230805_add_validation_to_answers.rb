class AddValidationToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :validation, :boolean
  end
end

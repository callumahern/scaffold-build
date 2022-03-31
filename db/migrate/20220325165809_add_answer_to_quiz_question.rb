class AddAnswerToQuizQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :quiz_questions, :answer, :string
  end
end

class AddAuthorToQuiz < ActiveRecord::Migration[6.1]
  def change
    add_column :quizzes, :author, :string
  end
end

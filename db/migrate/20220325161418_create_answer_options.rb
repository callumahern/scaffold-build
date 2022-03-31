class CreateAnswerOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_options do |t|
      t.string :choice
      t.references :quiz_question, null: false, foreign_key: true

      t.timestamps
    end
  end
end

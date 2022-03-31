class QuizQuestion < ApplicationRecord
  belongs_to :quiz
  has_many :answer_options
  has_one :answer
end

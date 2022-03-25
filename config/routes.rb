Rails.application.routes.draw do
  resources :quizzes do
    resources :quiz_questions
  end
  # namespace :quiz do
  #   resources :quiz_questions
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Prototype::Application.routes.draw do
  root :to => "static_pages#index"
  
  resources :courses
  resources :lessons
  resources :sublessons
  resources :quizzes
  resources :questions
  resources :answers
end

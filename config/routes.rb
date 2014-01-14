Prototype::Application.routes.draw do
  root :to => "static_pages#root"
  
  resources :courses
  resources :lessons
  resources :sublessons
  resources :quizzes
  resources :questions
  resources :answers
  resources :users
  resource :session, :only => [:create, :destroy, :new]
end

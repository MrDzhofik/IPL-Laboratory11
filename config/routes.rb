Rails.application.routes.draw do
  root 'calc#input'
  get 'calc/show'
  get 'calc/xml'
  get 'calc/json'
  resources :answers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

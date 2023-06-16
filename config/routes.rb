Rails.application.routes.draw do

  get '/home', to: 'home#index'
  
  resources :categories do
    resources :expenses
  end
  # resources :expenses
  devise_for :users

  root 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
end

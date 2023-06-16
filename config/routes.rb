Rails.application.routes.draw do

  root to: 'home#index'
  devise_for :users

  # get '/home', to: 'home#index'
  

  
  resources :categories
  resources :expenses
  

  # root 'home#index'
end

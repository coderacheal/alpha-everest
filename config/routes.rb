Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

<<<<<<< HEAD
  get '/home', to: 'home#index'
  
  resources :categories do
    resources :expenses
  end
  # resources :expenses
  devise_for :users

  root 'home#index'
=======
  # Defines the root path route ("/")
  # root "articles#index"
>>>>>>> 34decbd856036949981fb5a66e9e33c6050db301
end

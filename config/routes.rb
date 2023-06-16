Rails.application.routes.draw do

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> dev
  get '/home', to: 'home#index'
  
  resources :categories do
    resources :expenses
  end
  # resources :expenses
  devise_for :users

  root 'home#index'
<<<<<<< HEAD
=======
  # Defines the root path route ("/")
  # root "articles#index"
>>>>>>> 34decbd856036949981fb5a66e9e33c6050db301
=======
>>>>>>> dev
end

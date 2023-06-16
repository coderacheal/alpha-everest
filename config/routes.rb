Rails.application.routes.draw do

  # root to: 'home#index'


  get '/home', to: 'home#index'
  

  
  resources :categories do
    resources :expenses
  end
  # resources :expenses
  devise_for :users
  

  root 'home#index'
end


# Rails.application.routes.draw do
#   get '/splash', to: 'splash#index'
#   resources :expenses
#   resources :games
#   devise_for :users
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   root 'splash#index'
# end
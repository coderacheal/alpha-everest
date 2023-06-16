Rails.application.routes.draw do
  devise_for :users

  get '/home', to: 'home#index'
  

  resources :users, except: [:show] do
    resources :categories do
      resources :expenses
    end
  end



  # Catch-all route for handling invalid URLs
  # match "*path", to: "application#handle_routing_error", via: :all

  # Root route
  # root "splash_screen#index"

  root 'home#index'
end

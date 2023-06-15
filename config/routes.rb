Rails.application.routes.draw do
  devise_for :users

  # Root route
  root "users#welcome_page"

  resources :users do
    resources :categories do
      resources :expenses
    end
  end

  # Catch-all route for handling invalid URLs
  match "*path", to: "application#handle_routing_error", via: :all
end

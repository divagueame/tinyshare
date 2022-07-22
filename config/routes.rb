Rails.application.routes.draw do
  resources :user_uploads
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'user_uploads#index'
end

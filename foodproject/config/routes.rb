Rails.application.routes.draw do
	
  resources :businesses do
  	resources :foods
  end
  # resources :foods
  devise_for :users
  root 'businesses#index'
devise_scope :user do
   get "signup", to: "devise/registrations#new"
   get "sign_in", to: "devise/sessions#new"
   get "logout", to: "devise/sessions#destroy"
end
end

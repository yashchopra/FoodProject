Rails.application.routes.draw do
	
  resources :businesses do
  	resources :foods
  end
  # resources :foods
  devise_for :users

  # @try = current_user.id
  root 'businesses#home'
  
devise_scope :user do
   get "signup", to: "devise/registrations#new"
   get "sign_in", to: "devise/sessions#new"
   get "logout", to: "devise/sessions#destroy"
end
end

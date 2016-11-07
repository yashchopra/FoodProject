Rails.application.routes.draw do
  devise_for :users
  resources :businesses
  root 'businesses#index'
devise_scope :user do
   get "signup", to: "devise/registrations#new"
   get "", to: "devise/sessions#new"
   get "logout", to: "devise/sessions#destroy"
end
end

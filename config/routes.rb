Rails.application.routes.draw do
  
  resources :games
  resources :gametypes
  resources :rules
  resources :gamerules
  resources :tables
  resources :sessions
  resources :users

  root to: "games#index"

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"

end

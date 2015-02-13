Rails.application.routes.draw do
  
  resources :games
  resources :gametypes
  resources :rules

  root to: "games#index"

end

Rails.application.routes.draw do
  
  resources :games
  resources :gametypes
  resources :rules
  resources :gamerules

  root to: "games#index"

end

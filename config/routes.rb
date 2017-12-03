Rails.application.routes.draw do
  resources :maps
  resources :champions
  resources :games
  resources :players
  resources :teams
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

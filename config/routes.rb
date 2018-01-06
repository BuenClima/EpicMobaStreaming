Rails.application.routes.draw do
  resources :streamers
  resources :matchups
  resources :statistics
  resources :bets
  resources :tournament_teams
  resources :tournaments
  resources :players_map_performances
  resources :players_picks
  resources :maps
  resources :champions
  resources :games
  resources :players
  resources :teams
  resources :users
  get '/api/getStreamers', to: 'home#streamers'
  get '/index', to: 'home#index'
  get '/game/lol', to: 'game#lol'
  get '/game/hots', to: 'game#hots'
  get '/game/dota2', to: 'game#dota2'
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

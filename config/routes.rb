Rails.application.routes.draw do
  resources :contacts
  get 'contact/index'

  get 'contact/sent'
  post 'contact/sent'
  get 'player/player'

  resources :teams
  resources :players
  resources :streamers
  get 'team/index'

  get 'team/team'
  get 'player/player'

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
  resources :users
  get '/api/getStreamers', to: 'home#streamers'
  get '/index', to: 'home#index'
  get '/team', to: 'team#index'
  get '/team/:id', to: 'team#team'
  get '/team/team/:id', to: 'team#team'
  get '/game/lol', to: 'game#lol'
  get '/game/hots', to: 'game#hots'
  get '/game/dota2', to: 'game#dota2'
  get '/player/:id', to: 'player#player'
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

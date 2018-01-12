Rails.application.routes.draw do
  get 'admin/login'

  get 'admin/menu'

  devise_for :users
  resources :contacts
  resources :teams
  resources :players
  resources :streamers
  get 'team/index'

  get 'team/team'

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
  get '/api/getStreamers', to: 'home#streamers'
  get '/api/getStreamersBy/:id', to: 'home#streamerbyid'
  get '/index', to: 'home#index'
  get '/team', to: 'team#index'
  get '/team/:id', to: 'team#team'
  get '/team/team/:id', to: 'team#team'
  get '/game/lol', to: 'game#lol'
  get '/game/hots', to: 'game#hots'
  get '/game/dota2', to: 'game#dota2'
  get '/contact', to:'contact#index'
  post '/contact/new', to:'contact#new'
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

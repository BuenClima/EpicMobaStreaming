json.extract! players_pick, :id, :player_id, :champion_id, :pick_rate, :win_rate, :kda, :created_at, :updated_at
json.url players_pick_url(players_pick, format: :json)

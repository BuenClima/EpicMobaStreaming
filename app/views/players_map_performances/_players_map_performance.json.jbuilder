json.extract! players_map_performance, :id, :player_id, :map_id, :win_rate, :loose_rate, :created_at, :updated_at
json.url players_map_performance_url(players_map_performance, format: :json)

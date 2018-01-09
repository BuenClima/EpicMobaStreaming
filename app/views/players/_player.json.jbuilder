json.extract! player, :id, :name, :nick, :origin, :team_id, :image, :biography, :position, :created_at, :updated_at
json.url player_url(player, format: :json)

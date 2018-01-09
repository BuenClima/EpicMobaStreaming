json.extract! streamer, :id, :twitch_user_id, :twitch_username, :twitch_channel_url, :name, :game_id, :image, :streamer_type, :created_at, :update_at, :created_at, :updated_at
json.url streamer_url(streamer, format: :json)

class CreateStreamers < ActiveRecord::Migration[5.1]
  def change
    create_table :streamers do |t|
      t.string :twitch_user_id
      t.string :twitch_username
      t.string :twitch_channel_url
      t.string :name
      t.references :game, foreign_key: true
      t.integer :streamer_type
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end

class CreateStreamers < ActiveRecord::Migration[5.1]
  def change
    create_table :streamers do |t|
      t.integer :twitch_user_id
      t.string :twitch_username
      t.string :twitch_channel_url
      t.string :name
      t.string :lastname
      t.date :birthday
      t.references :game, foreign_key: true
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end

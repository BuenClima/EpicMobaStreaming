class Streamer < ApplicationRecord
  belongs_to :game
  validates :game_id,
            :twitch_username,
            :twitch_user_id,
            :twitch_channel_url,
            :name,
            :image,
            :streamer_type,
            presence: true


  before_create :setcreateat
  before_save :setupdatedate

  scope :streamerByGameAndType, -> (game, streamer_type){where('game' => Game.find(game), 'streamer_type' => streamer_type)}

  private

  def setcreateat
    self.created_at =  Time.now.strftime('%d/%m/%Y %H:%M')
  end

  def setupdatedate
    self.updated_at =  Time.now.strftime('%d/%m/%Y %H:%M')
  end
end

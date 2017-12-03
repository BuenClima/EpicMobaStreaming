class Player < ApplicationRecord
  belongs_to :team
  has_many :players_picks
  has_many :champions, :through => :players_picks
  has_many :player_performance_maps
  has_many :maps,through: :player_performance_maps
  validates :name,
            :lastname,
            :nick,
            :origin,
            :image,
            presence: true
end

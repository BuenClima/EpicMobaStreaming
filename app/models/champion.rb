class Champion < ApplicationRecord
  belongs_to :game
  has_many :players_picks
  has_many :players, through: :players_picks
  validates :name,
            :image,
            :game_id,
            presence: true
  validates_uniqueness_of :name
end

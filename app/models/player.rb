class Player < ApplicationRecord
  belongs_to :team
  has_many :statistics
  has_many :players_picks
  has_many :champions, through: :players_picks
  has_many :players_map_performances
  has_many :maps, through: :players_map_performances
  validates :name,
            :lastname,
            :nick,
            :origin,
            :image,
            presence: true
end

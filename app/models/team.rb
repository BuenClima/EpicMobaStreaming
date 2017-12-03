class Team < ApplicationRecord
  has_many :players
  has_many :tournament_teams
  has_many :tournaments, through: :tournament_teams
  validates :name,
            :origin,
            :coach,
            :image,
            presence: true
  validates_uniqueness_of :name
end

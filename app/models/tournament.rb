class Tournament < ApplicationRecord
  has_many :tournament_teams
  has_many :teams, through: :tournament_teams
  has_many :matchups
  validates :name,
            :created_at,
            :updated_at,
            presence: true
end

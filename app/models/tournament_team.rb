class TournamentTeam < ApplicationRecord
  belongs_to :tournament
  belongs_to :team
  validates :tournament_id,
            :team_id,
            :created_at,
            :updated_at,
            presence: true
end

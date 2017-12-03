class Matchup < ApplicationRecord
  belongs_to :blue_team, class_name: 'Team'
  belongs_to :red_team, class_name: 'Team'
  belongs_to :winner, class_name: 'Team'
  belongs_to :looser, class_name: 'Team'
  belongs_to :tournament
  validates :blue_team_id,
            :red_team_id,
            :winner_id,
            :loose_id,
            :tournament_id,
            :create_at,
            :updated_at,
            presence: true
end

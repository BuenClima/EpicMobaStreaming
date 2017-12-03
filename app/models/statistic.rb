class Statistic < ApplicationRecord
  belongs_to :player
  belongs_to :team
  validates :name,
            :created_at,
            :updated_at,
            :ratio,
            :player_id,
            :team_id,
            presence: true
end

class Bet < ApplicationRecord
  belongs_to :matchup
  validates :name,
            :ratio,
            :created_at,
            :updated_at,
            presence: true
end

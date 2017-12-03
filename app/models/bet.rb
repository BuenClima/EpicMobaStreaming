class Bet < ApplicationRecord
  belongs_to :matchup, required: false
  validates :name,
            :ratio,
            :created_at,
            :updated_at,
            presence: true
end

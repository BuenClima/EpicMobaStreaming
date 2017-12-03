class Team < ApplicationRecord
  has_many :players
  has_many :matchups
  validates :name,
            :origin,
            :coach,
            :image,
            presence: true
  validates_uniqueness_of :name
end

class Team < ApplicationRecord
  validates :name,
            :origin,
            :coach,
            :image,
            presence: true
  validates_uniqueness_of :name
end

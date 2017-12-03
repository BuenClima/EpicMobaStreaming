class Game < ApplicationRecord
  validates :name,
            :created_at,
            :updated_at,
            presence: true
  validates_uniqueness_of :name
  has_many :champions
  has_many :maps
end

class Map < ApplicationRecord
  belongs_to :game
  validates :name,
            :image,
            :created_at,
            :updated_at,
            presence: true
  validates_uniqueness_of :name
end

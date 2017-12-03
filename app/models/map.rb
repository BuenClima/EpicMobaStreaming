class Map < ApplicationRecord
  belongs_to :game
  has_many :player_performance_maps
  has_many :players,through: :player_performance_maps
  validates :name,
            :image,
            :created_at,
            :updated_at,
            presence: true
  validates_uniqueness_of :name
end

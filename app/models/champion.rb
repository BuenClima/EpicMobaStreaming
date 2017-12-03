class Champion < ApplicationRecord
  belongs_to :game
  has_and_belongs_to_many :players
  validates :name,
            :image,
            :game_id,
            presence: true
  validates_uniqueness_of :name
end

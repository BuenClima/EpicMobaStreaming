class Champion < ApplicationRecord
  belongs_to :game
  validates :name,
            :image,
            :game_id,
            presence: true
  validates_uniqueness_of :name
end

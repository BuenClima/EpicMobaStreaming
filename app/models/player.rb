class Player < ApplicationRecord
  belongs_to :team
  validates :name,
            :lastname,
            :nick,
            :origin,
            :image,
            presence: true
end

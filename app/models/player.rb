class Player < ApplicationRecord
  belongs_to :team
  has_and_belongs_to_many :champions
  validates :name,
            :lastname,
            :nick,
            :origin,
            :image,
            presence: true
end

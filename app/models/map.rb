class Map < ApplicationRecord
  belongs_to :game
  has_many :players_map_performances
  has_many :players, through: :players_map_performances
  validates :name,
            :image,
            :created_at,
            :updated_at,
            presence: true
  validates_uniqueness_of :name

  before_create :setcreateat
  before_save :setupdatedate

  private

  def setcreateat
    self.created_at =  Time.now.strftime('%d/%m/%Y %H:%M')
  end

  def setupdatedate
    self.updated_at =  Time.now.strftime('%d/%m/%Y %H:%M')
  end
end

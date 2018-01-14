class Game < ApplicationRecord
  validates :name,
            :created_at,
            :updated_at,
            presence: true
  validates_uniqueness_of :name
  has_many :champions
  has_many :maps
  has_many :streamers

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

class Champion < ApplicationRecord
  belongs_to :game
  has_many :players_picks
  has_many :players, through: :players_picks
  validates :name,
            :image,
            :game_id,
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

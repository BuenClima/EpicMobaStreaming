class Player < ApplicationRecord
  belongs_to :team
  validates :name,
            :nick,
            :image,
            :biography,
            presence: true
  validates_uniqueness_of :nick
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

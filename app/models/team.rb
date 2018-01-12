class Team < ApplicationRecord
  validates :name,
            :image,
            :description,
            presence: true

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

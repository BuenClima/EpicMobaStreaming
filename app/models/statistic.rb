class Statistic < ApplicationRecord
  belongs_to :player
  belongs_to :team
  validates :name,
            :created_at,
            :updated_at,
            :ratio,
            :player_id,
            :team_id,
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

class PlayersPick < ApplicationRecord
  belongs_to :player
  belongs_to :champion
  validates :kda,
            :champion_id,
            :player_id,
            :win_rate,
            :pick_rate,
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

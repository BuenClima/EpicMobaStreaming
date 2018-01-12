class TournamentTeam < ApplicationRecord
  belongs_to :tournament
  belongs_to :team
  validates :tournament_id,
            :team_id,
            :created_at,
            :updated_at,
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

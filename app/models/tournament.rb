class Tournament < ApplicationRecord
  has_many :tournament_teams
  has_many :teams, through: :tournament_teams
  has_many :matchups
  validates :name,
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

class Matchup < ApplicationRecord
  belongs_to :blue_team, class_name: 'Team'
  belongs_to :red_team, class_name: 'Team'
  belongs_to :winner, class_name: 'Team'
  belongs_to :looser, class_name: 'Team'
  belongs_to :tournament
  validates :blue_team,
            :red_team,
            :winner,
            :looser,
            :tournament,
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

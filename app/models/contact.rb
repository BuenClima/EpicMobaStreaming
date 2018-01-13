class Contact < ApplicationRecord
  validates :twitchChannel,
            :email,
            :message,
            :gender,
            :dateToPlay,
            presence: true
  before_create :insertdate

  private

  def insertdate
    self.created_at = Time.now.strftime('%d/%m/%Y %H:%M')
  end
end

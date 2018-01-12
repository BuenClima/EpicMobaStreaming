class Contact < ApplicationRecord
  validates :name,
            :email,
            :gender,
            :visitant_type,
            :message,
            presence: true
  before_create :insertdate

  private

  def insertdate
    self.created_at = Time.now.strftime('%d/%m/%Y %H:%M')
  end
end

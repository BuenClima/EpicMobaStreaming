class User < ApplicationRecord
  validates :name,
            :lastname,
            :email,
            :password,
            :created_at,
            :updated_at,
            presence: true

  validates_uniqueness_of :email
end

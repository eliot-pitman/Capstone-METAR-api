class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :home_airport, presence: true
  # validates :username, presence: true, uniqueness: true

  has_many :favorites
  has_many :airports, through: :favorites
end

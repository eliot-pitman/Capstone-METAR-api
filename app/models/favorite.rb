class Favorite < ApplicationRecord
  # belongs_to :airport
  belongs_to :user

  validates :airport_name, presence: true
end

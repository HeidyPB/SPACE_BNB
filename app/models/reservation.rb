class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :spacecraft
  validates :comment, presence: true
end

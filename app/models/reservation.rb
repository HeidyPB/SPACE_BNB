class Reservation < ApplicationRecord
  enum reservation_status: {
    pending: 0,
    accepted: 1,
    rejected: 2
  }

  belongs_to :user
  belongs_to :spacecraft
  validates :comment, presence: true
end

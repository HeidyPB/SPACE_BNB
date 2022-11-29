class Spacecraft < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :name, :velocity, :capacity, :price, presence: true
  validates :name, uniqueness: true
end

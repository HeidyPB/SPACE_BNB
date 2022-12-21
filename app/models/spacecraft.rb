class Spacecraft < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_one_attached :personnage
  has_many :reservations, dependent: :destroy
  validates :name, :velocity, :passenger_capacity, :price, presence: true
  validates :name, uniqueness: true
end

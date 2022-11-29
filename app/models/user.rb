class User < ApplicationRecord
  # has_many :spacecrafts, :reservations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :spacecrafts
  has_many :reservations

  validates_length_of :password, in: 6..20, on: :create
end

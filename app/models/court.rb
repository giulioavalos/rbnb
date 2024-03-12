class Court < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :opening_hour, presence: true
  validates :closing_hour, presence: true
  validates :indoor, presence: true
  validates :price_hour, presence: true
  validates :created_at, presence: true
  validates :updated_at, presence: true
end

class Toilet < ApplicationRecord
  belongs_to :owner
  has_many :bookings
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :price, presence: true
  mount_uploader :picture, PhotoUploader
end

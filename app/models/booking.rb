class Booking < ApplicationRecord
  belongs_to :owner
  belongs_to :renter
  belongs_to :toilet
  validates :owner_id, presence: true
  validates :renter_id, presence: true
end

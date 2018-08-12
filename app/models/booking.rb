class Booking < ApplicationRecord
  belongs_to :owner
  belongs_to :renter
  belongs_to :toilet
end

class Renter < User
  has_many :bookings
  has_many :toilets, through: :bookings
end

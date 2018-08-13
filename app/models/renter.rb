class Renter < User
  has_many :bookings
  has_many :toilets, through: :bookings

  def renter?
    true
  end
end

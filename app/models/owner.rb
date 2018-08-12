class Owner < User
  has_many :bookings
  has_many :toilets, through: :bookings

  def owner?
    true
  end
end

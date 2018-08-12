class Owner < User
  has_many :bookings
  has_many :toilets, through: :bookings
  validate :picture, presence: true
end

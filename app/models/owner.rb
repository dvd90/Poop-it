class Owner < User
  has_many :bookings
  has_many :toilets, through: :bookings
  #validates :picture, presence: true

  def owner?
    true
  end
end

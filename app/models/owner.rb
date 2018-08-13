class Owner < User
  has_many :bookings, dependent: :destroy
  has_many :toilets, through: :bookings, dependent: :destroy
  #validates :picture, presence: true

  def owner?
    true
  end
end

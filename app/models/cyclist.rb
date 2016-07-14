class Cyclist < User

  has_many :bookings
  has_many :review_of_cyclists
  has_many :review_of_mechanics

  validates :email, uniqueness: true

end

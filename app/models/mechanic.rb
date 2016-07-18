class Mechanic < User

  has_many :bookings
  has_many :review_of_cyclists
  has_many :review_of_mechanics
  has_many :services

  validates :email, uniqueness: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :postal_code, format: { with: /\A[A-Z][0-9][A-Z]\s?[0-9][A-Z][0-9]\Z/ }

  def self.search(service)
    Mechanic.joins(:services).where("service_name ILIKE ?", "%#{service}%")
  end

end

class ReviewOfMechanic < Review

  belongs_to :cyclist
  belongs_to :mechanic

  validate :service_expected_exists, :price_expected_exists

  def service_expected_exists
    if service_expected.nil?
      errors.add(:service_expected, "must exist") 
    end
  end

  def price_expected_exists
    if price_expected.nil?
      errors.add(:price_expected, "must exist") 
    end
  end

end
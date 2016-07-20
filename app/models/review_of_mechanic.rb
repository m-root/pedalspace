class ReviewOfMechanic < Review

  belongs_to :cyclist
  belongs_to :mechanic

  validate :service_expected_exists, :price_expected_exists

  after_save :calculate_new_avg

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

  def calculate_new_avg
    mechanic = self.mechanic
    mechanic.avg_rating = ReviewOfMechanic.where(mechanic_id: mechanic.id).average(:rating)
    mechanic.save
  end

end

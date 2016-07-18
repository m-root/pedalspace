class ReviewOfCyclist < Review

  belongs_to :cyclist
  belongs_to :mechanic

  validate :did_pay_exists

  after_save :calculate_new_avg

  def did_pay_exists
    if did_pay.nil?
      errors.add(:did_pay, "must exist")
    end
  end

  def calculate_new_avg
    cyclist = self.cyclist
    cyclist.avg_rating = ReviewOfCyclist.where(cyclist_id: cyclist.id).average(:rating)
    cyclist.save
  end

end

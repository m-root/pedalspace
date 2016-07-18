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
    total_points = ReviewOfCyclist.where(cyclist_id: cyclist.id).sum(:rating).to_f
    number_of_reviews = ReviewOfCyclist.where(cyclist_id: cyclist.id).count
    cyclist.avg_rating = total_points / number_of_reviews
    cyclist.save
  end

end
class ReviewOfCyclist < Review

  belongs_to :cyclist
  belongs_to :mechanic

  validate :did_pay_exists

  def did_pay_exists
    if did_pay.nil?
      errors.add(:did_pay, "must exist") 
    end
  end

end
class Booking < ApplicationRecord

  belongs_to :cyclist
  belongs_to :mechanic

  validates :description, presence: true
  validates :status, presence: true

end

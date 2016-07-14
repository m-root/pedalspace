class Booking < ApplicationRecord

  has_many :comments
  has_many :requested_services
  has_many :services, through: :requested_services

  belongs_to :cyclist
  belongs_to :mechanic

  validates :description, presence: true
  validates :status, presence: true

end

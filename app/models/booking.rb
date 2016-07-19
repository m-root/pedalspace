class Booking < ApplicationRecord

  has_many :comments
  has_many :requested_services
  has_many :services, through: :requested_services

  belongs_to :cyclist
  belongs_to :mechanic

  validates :description, presence: true
  validates :status, presence: true

  def total_order_cost
    total_cost = 0
    self.services.each do |service|
      total_cost += service.service_price
    end
    total_cost
  end

end

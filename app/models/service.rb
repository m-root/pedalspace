class Service < ApplicationRecord

  belongs_to :mechanic

  has_many :requested_services

  validates :service_name, presence: true
  validates :service_price, presence: true,
                            numericality: { only_integer: true }

end

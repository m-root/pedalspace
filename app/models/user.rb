 class User < ApplicationRecord

  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :avg_rating, numericality: { 
                                          only_integer: true, 
                                          greater_than_or_equal_to: 0,
                                          less_than_or_equal_to: 10 
                                        }
end

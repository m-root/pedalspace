 class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #has_secure_password # This is not needed in devise, because they have their own validation on this

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true
  # validates :avg_rating, numericality: { 
  #                                         only_integer: true, 
  #                                         greater_than_or_equal_to: 0,
  #                                         less_than_or_equal_to: 10 
  #                                       }
end

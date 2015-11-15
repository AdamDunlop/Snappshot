class CreateUser < ActiveRecord::Base
  
  has_many :business_cards  

  validates :phone_number, numericality: { only_integer: true }
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true

  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password

end

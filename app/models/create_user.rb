class CreateUser < ActiveRecord::Base
  
  has_many :business_cards  

  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

end

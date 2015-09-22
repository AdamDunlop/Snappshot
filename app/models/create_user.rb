class CreateUser < ActiveRecord::Base
  
  has_many :business_cards  
  has_secure_password

end

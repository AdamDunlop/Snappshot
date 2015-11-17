class CreateUser < ActiveRecord::Base
  
  has_many :business_cards  

  validates :phone_number, numericality: { only_integer: true }
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true

  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
# 
  # def self.from_omniauth(auth)
  #   where(auth.slice(:provider, :id)).first_or_initialize.tap do |create_user|
  #     create_user.provider = auth.provider
  #     create_user.id = auth.id
  #     create_user.name = auth.info.name
  #     create_user.oauth_token = auth.credentials.token
  #     create_user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  #     create_user.save!
  #   end
  # end


end

class CreateUser < ActiveRecord::Base
  has_many :business_cards
end

class User < ActiveRecord::Base
  # attr_accessor :name, :email, :password

  # VALID_EMAIL = '/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+\z/i'

  validates :name, presence: true, length: {maximum: 30}
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

end


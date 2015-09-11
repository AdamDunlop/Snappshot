class User < ActiveRecord::Base
  attr_accessor :name, :email, :password

  VALID_EMAIL = '/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+\z/i'

  validates :name, presence: true, length: {maximum: 30}
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  # before_save :encrypt_password
private

  def encrypt_password
    self.salt Digest::SHA2.hexdigiest("#{Time.now.utc}--#{password}") if self.new_record?
    self.encrypted_password = encrypt(password)
  end

  def encrypt(pass)
    Digest::SHA2.hexdigiest("{self.salt}--#{pass}")
  end
end


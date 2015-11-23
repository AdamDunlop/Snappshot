class BusinessCard < ActiveRecord::Base

  belongs_to :create_user
  mount_uploader :image, ImageUploader
  geocoded_by :company_address
  after_validation :geocode

end

  
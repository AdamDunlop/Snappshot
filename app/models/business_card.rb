class BusinessCard < ActiveRecord::Base

  belongs_to :create_user
  mount_uploader :image, ImageUploader

end

  
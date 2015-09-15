class BusinessCard < ActiveRecord::Base
   mount_uploader :image, ImageUploader

end

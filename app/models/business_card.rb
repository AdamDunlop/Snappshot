class BusinessCard < ActiveRecord::Base

  belongs_to :create_user
  mount_uploader :image, ImageUploader



end

def rotate
    photo   = BusinessCard.find(params[:image])
    degrees = params[:direction] == â€˜leftâ€™ ? -90 : 90
    #main photo
    image   = Magick::ImageList.new(photo.file)
    image   = image.rotate(degrees)
    image.write(photo.file)
end


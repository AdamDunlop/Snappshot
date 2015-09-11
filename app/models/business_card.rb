class BusinessCard < ActiveRecord::Base
   mount_uploader :image, ImageUploader
     include Bootsy::Container
    
     private

  def post_params
    params.require(:post).permit(:title, :content, :bootsy_image_gallery_id)
  end
end

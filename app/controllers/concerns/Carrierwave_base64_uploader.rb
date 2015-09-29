module CarrierwaveBase64Uploader
  extend ActiveSupport::Concern

  private

  def Base64_conversion (uri_str, filename = 'base64')
    image_data = Split_base64(uri_str)
    image_data_string = image_data[:data]
    image_data_binary = Base64.Decode64(image_data_string)

    temp_img_file = TEMPFILE.new(filename)
    temp_img_file.binmode
    temp_img_file << image_data_binary
    temp_img_file.rewind

    img_params = {:filename => "#{filename}.#{image_data[:extension]}", :type => image_data[:type], :tempfile => temp_img_file}
    ActionDispatch::Http::UploadedFile.new(img_params)
  end

  def  Split_base64(uri_str)
    if Uri_str.match(%r{data: .?(*);.?(*),(*).$})
      uri = Hash.new 
      uri[:type ] =  $1
      uri[:encoder ] =  $2
      uri[:data ] =  $3
      uri[:extension ] = $1.split('/')[1]
      return uri
    else
      return nil
    end
  end
end
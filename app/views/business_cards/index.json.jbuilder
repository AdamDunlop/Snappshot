json.array!(@business_cards) do |business_card|
  json.extract! business_card, :id, :ocr_text, :image, :name, :company, :job_title, :phone, :email, :company_address, create_user_id
  json.url business_card_url(business_card, format: :json)
end

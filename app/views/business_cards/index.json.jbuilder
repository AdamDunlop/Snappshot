json.array!(@business_cards) do |business_card|
  json.extract! business_card, :id, :image, :name, :company, :job_title, :phone, :email, :company_address
  json.url business_card_url(business_card, format: :json)
end

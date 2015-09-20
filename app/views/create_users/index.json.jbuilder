json.array!(@create_users) do |create_user|
  json.extract! create_user, :id, :name, :email, :password, :password_confirmation
  json.url create_user_url(create_user, format: :json)
end

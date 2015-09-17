json.array!(@create_users) do |create_user|
  json.extract! create_user, :id, :name, :emaile, :password
  json.url create_user_url(create_user, format: :json)
end

json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password_digest, :testimony
  json.url user_url(user, format: :json)
end

json.array!(@users) do |user|
  json.extract! user, :id, :fname, :lname, :email, :phone, :cash_balance
  json.url user_url(user, format: :json)
end

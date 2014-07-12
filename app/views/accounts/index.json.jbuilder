json.array!(@accounts) do |account|
  json.extract! account, :id, :user_id, :currency_id, :label, :default_amount, :default_account
  json.url account_url(account, format: :json)
end

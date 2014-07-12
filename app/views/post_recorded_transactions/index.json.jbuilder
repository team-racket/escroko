json.array!(@post_recorded_transactions) do |post_recorded_transaction|
  json.extract! post_recorded_transaction, :id, :label, :default_amount, :commentary, :category_id, :type, :start_date, :end_date, :day, :to_validate, :account_id
  json.url post_recorded_transaction_url(post_recorded_transaction, format: :json)
end

json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :account_id, :category_id, :post_recorded_transaction_id, :commentary, :type, :amount, :date
  json.url transaction_url(transaction, format: :json)
end

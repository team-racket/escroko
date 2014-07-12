json.array!(@currencies) do |currency|
  json.extract! currency, :id, :label, :symbol, :position
  json.url currency_url(currency, format: :json)
end

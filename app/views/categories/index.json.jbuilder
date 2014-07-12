json.array!(@categories) do |category|
  json.extract! category, :id, :label, :color, :user_id
  json.url category_url(category, format: :json)
end

json.array!(@prices) do |price|
  json.extract! price, :id, :money, :money1, :money2
  json.url price_url(price, format: :json)
end

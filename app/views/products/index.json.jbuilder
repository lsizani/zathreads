json.array!(@products) do |product|
  json.extract! product, :id, :designer_id, :sku, :price, :description, :photo_url
  json.url product_url(product, format: :json)
end

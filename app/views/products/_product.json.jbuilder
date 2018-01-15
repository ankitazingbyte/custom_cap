json.extract! product, :id, :image, :title, :price, :created_at, :updated_at
json.url product_url(product, format: :json)

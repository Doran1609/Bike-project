json.extract! item, :id, :name, :description, :specification, :image, :category, :price, :created_at, :updated_at
json.url item_url(item, format: :json)

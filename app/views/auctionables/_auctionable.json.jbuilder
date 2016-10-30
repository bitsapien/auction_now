json.extract! auctionable, :id, :name, :description, :image_url, :base_price, :created_at, :updated_at
json.url auctionable_url(auctionable, format: :json)
json.extract! listing, :id, :title, :thumb_img, :address, :lat, :lng, :price, :home_type_id, :integer, :description, :max_guests, :images, :created_at, :updated_at
json.url listing_url(listing, format: :json)

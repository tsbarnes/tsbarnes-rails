json.extract! location, :id, :resume_id, :address, :postal_code, :city, :region, :region_shorthand, :created_at, :updated_at
json.url location_url(location, format: :json)

json.extract! profile, :id, :resume_id, :network, :icon_name, :username, :url, :order, :created_at, :updated_at
json.url profile_url(profile, format: :json)

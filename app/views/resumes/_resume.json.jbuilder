json.extract! resume, :id, :first_name, :last_name, :label, :email, :phone, :summary, :location_id, :created_at, :updated_at
json.url resume_url(resume, format: :json)

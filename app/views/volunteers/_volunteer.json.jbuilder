json.extract! volunteer, :id, :resume_id, :organization, :position, :website, :start_date, :end_date, :summary, :created_at, :updated_at
json.url volunteer_url(volunteer, format: :json)

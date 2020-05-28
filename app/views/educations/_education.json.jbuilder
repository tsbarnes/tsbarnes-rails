json.extract! education, :id, :resume_id, :institution, :area, :school_url, :study_type, :start_date, :end_date, :gpa, :created_at, :updated_at
json.url education_url(education, format: :json)

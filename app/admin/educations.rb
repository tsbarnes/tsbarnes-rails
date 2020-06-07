ActiveAdmin.register Education do
  belongs_to :resume
  permit_params :institution, :area, :school_url, :study_type, :start_date, :end_date, :gpa
end

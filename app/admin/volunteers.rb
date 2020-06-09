ActiveAdmin.register Volunteer do
  belongs_to :resume
  navigation_menu :resume
  permit_params :resume_id, :organization, :position, :website, :start_date, :end_date, :summary
end

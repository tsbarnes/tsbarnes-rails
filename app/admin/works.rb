ActiveAdmin.register Work do
  belongs_to :resume
  navigation_menu :resume
  permit_params :resume_id, :company, :position, :website, :start_date, :end_date, :summary
end

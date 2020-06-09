ActiveAdmin.register Language do
  belongs_to :resume
  navigation_menu :resume
  permit_params :resume_id, :name, :fluency, :order
end

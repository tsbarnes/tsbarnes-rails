ActiveAdmin.register Profile do
  belongs_to :resume
  navigation_menu :resume
  permit_params :resume_id, :network, :icon_name, :username, :url, :order
end

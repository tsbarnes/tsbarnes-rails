ActiveAdmin.register Reference do
  belongs_to :resume
  navigation_menu :resume
  permit_params :resume_id, :name, :reference, :order
end

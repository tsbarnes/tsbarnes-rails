ActiveAdmin.register Course do
  belongs_to :education
  navigation_menu :education
  permit_params :name, :order
end

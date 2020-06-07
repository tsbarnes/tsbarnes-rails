ActiveAdmin.register Course do
  belongs_to :education
  permit_params :name, :order
end

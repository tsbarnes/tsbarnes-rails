ActiveAdmin.register Category do
  permit_params :name, :summary, :description
end

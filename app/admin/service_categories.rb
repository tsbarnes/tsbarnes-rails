ActiveAdmin.register ServiceCategory do
  permit_params :service_id, :category_id

  form do |f|
    f.inputs "Service Category" do
      f.input :service, collection: Service.all
      f.input :category, collection: Category.all
    end
    f.actions
  end
end

ActiveAdmin.register Service do
  permit_params :name, :price, :summary, :description, :order

  show do
    panel "Service" do
      attributes_table_for project do
        row :image do |i|
          image_tag url_for(i.image.variant(resize_to_limit: [100,100]))
        end
        row :name
        row :summary
        row :description
        row :price
        row :order
      end
    end
  end

  form do |f|
    f.semantic_errors
    f.inputs "parameters" do
      f.input :name
      f.input :summary, as: :medium_editor
      f.input :description, as: :medium_editor
      f.input :price
      f.input :order
      f.object.image do |at|
        span image_tag(at.image.variant(resize_to_limit: [100,100]))
      end
      f.input :image, as: :file
    end
    f.actions
  end
end

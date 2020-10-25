ActiveAdmin.register Project do
  permit_params :name, :summary, :description, :url, :order, :image

  show do
    panel "Project" do
      attributes_table_for project do
        row :image do |i|
          image_tag url_for(i.image.variant(resize_to_limit: [100,100]))
        end
        row :name
        row :summary
        row :description
        row :url
        row :order
      end
    end
  end

  form do |f|
    f.semantic_errors
    f.inputs "parameters" do
      f.input :name
      f.input :summary
      f.input :description
      f.input :url
      f.input :order
      f.object.image do |at|
        span image_tag(at.image.variant(resize_to_limit: [100,100]))
      end
      f.input :image, as: :file
    end
    f.actions
  end
end

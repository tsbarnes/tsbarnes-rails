ActiveAdmin.register Project do
  permit_params :name, :summary, :description, :url, :image

  form do |f|
    f.semantic_errors
    f.inputs "parameters" do
      f.input :name
      f.input :summary
      f.input :description
      f.input :url
      f.object.image do |at|
        span image_tag(at.image.variant(resize_to_limit: [100,100]))
      end
      f.input :image, as: :file
    end
    f.actions
  end
end

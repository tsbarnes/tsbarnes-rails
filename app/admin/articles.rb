ActiveAdmin.register Article do
  permit_params :title, :summary, :body, :header

  show do
    panel "Blog Article" do
      attributes_table_for article do
        row :header do |i|
          image_tag url_for(i.header.variant(resize_to_limit: [100,100]))
        end
        row :title
        row :summary
        row :body
      end
    end
  end

  form do |f|
    f.inputs 'Blog Article' do
      f.input :header, as: :file
      f.input :title
      f.input :summary, as: :medium_editor
      f.input :body, as: :medium_editor
    end
    f.actions
  end
end

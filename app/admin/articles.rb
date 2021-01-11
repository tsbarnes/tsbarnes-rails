ActiveAdmin.register Article do
  permit_params :title, :summary, :body, :header

  show do
    panel "Blog Article" do
      attributes_table_for article do
        row :header do |i|
          if i.header.present?
            image_tag(url_for(i.header.variant(resize_to_limit: [100,100])))
          else
            content_tag(:span, "No header yet")
          end
        end
        row :title
        row :summary
        row :body do |b|
          content_tag(:p, b.body)
        end
      end
    end
  end

  form do |f|
    f.inputs 'Blog Article' do
      f.input :header, as: :file, :hint => f.object.header.present? \
        ? image_tag(f.object.header.variant(resize_to_limit: [100,100]))
        : content_tag(:span, "no header yet")
      f.input :title
      f.input :summary, as: :medium_editor
      f.input :body, as: :medium_editor
    end
    f.actions
  end
end

ActiveAdmin.register Category do
  permit_params :name, :summary, :description, :header

  show do
    panel "Category" do
      attributes_table_for category do
        row :header do |i|
          if i.header.present?
            image_tag(url_for(i.header.variant(resize_to_limit: [100,100])))
          else
            content_tag(:span, "No header yet")
          end
        end
        row :name
        row :summary do |s|
          raw(s.summary)
        end
        row :description do |d|
          raw(d.description)
        end
      end
    end
  end

  form do |f|
    f.inputs 'Category' do
      f.input :header, as: :file, :hint => f.object.header.present? \
        ? image_tag(f.object.header.variant(resize_to_limit: [100,100]))
        : content_tag(:span, "no header yet")
      f.input :name
      f.input :summary, as: :medium_editor
      f.input :description, as: :medium_editor
    end
    f.actions
  end
end

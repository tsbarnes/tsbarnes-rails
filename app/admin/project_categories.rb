ActiveAdmin.register ProjectCategory do
  permit_params :project_id, :category_id

  form do |f|
    f.inputs "Project Category" do
      f.input :project, collection: Project.all
      f.input :category, collection: Category.all
    end
    f.actions
  end
end

ActiveAdmin.register Skill do
  belongs_to :resume
  navigation_menu :resume
  permit_params :id, :name, :url, :level, :order,
                keywords_attributes: [:id, :name, :order, :_destroy]

  form do |f|
    f.inputs do
      f.input :name
      f.input :level
      f.input :url
      f.has_many :keywords do |k|
        k.input :name
      end
    end
    f.actions
  end
end

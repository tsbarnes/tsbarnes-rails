ActiveAdmin.register Interest do
  belongs_to :resume
  navigation_menu :resume
  permit_params :id, :name, :order,
                keywords_attributes: [:id, :name, :order, :_destroy]

  form do |f|
    f.inputs do
      f.input :name
      f.has_many :keywords do |k|
        k.input :name
      end
    end
  end
end

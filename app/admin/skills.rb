ActiveAdmin.register Skill do
  belongs_to :resume
  navigation_menu :resume
  permit_params :resume_id, :name, :url, :level, :order

  form do |f|
    f.inputs do
      t.input :name
      t.input :level
      t.input :url
      t.has_many :keywords do |k|
        k.input :id
        k.input :resume_id
        k.input :name
      end
    end
  end

end

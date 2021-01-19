ActiveAdmin.register Volunteer do
  belongs_to :resume
  navigation_menu :resume
  permit_params :resume_id, :organization, :position, :website, :start_date, :end_date, :summary,
    highlights_attributes: [:id, :description, :order, :_destroy]

  show do
    panel "Volunteer Work" do
      attributes_table_for volunteer do
        row :resume
        row :organization
        row :position
        row :website
        row :start_date
        row :end_date
        row :summary
      end
    end

    panel "Highlights" do
      table_for volunteer.highlights do
        column :description
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :resume
      f.input :organization
      f.input :position
      f.input :website
      f.input :start_date
      f.input :end_date
      f.input :summary
      f.has_many :highlights, sortable: :order, sortable_start: 1 do |k|
        k.input :description
      end
    end
    f.actions
  end
end

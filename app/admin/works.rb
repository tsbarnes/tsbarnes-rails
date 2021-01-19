ActiveAdmin.register Work do
  belongs_to :resume
  navigation_menu :resume

  permit_params :resume_id, :company, :position, :website, :start_date, :end_date, :summary,
    highlights_attributes: [:id, :description, :order, :_destroy]

  show do
    panel "Work" do
      attributes_table_for work do
        row :resume
        row :company
        row :position
        row :website
        row :start_date
        row :end_date
        row :summary
      end
    end

    panel "Highlights" do
      table_for work.highlights do
        column :description
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :resume
      f.input :company
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

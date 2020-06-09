ActiveAdmin.register JobProject do
  permit_params :job_type, :job_id, :project_id

  form do |f|
    f.inputs "Job Project" do
      f.input :job_identifier, collection: (Work.all + Volunteer.all).map { |i| [ i.position, "#{i.class.to_s}-#{i.id}"] }
      f.input :project, collection: Project.all
    end
    f.actions
  end
end

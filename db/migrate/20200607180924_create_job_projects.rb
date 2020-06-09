class CreateJobProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :job_projects do |t|
      t.belongs_to :job, null: false, polymorphic: true
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end

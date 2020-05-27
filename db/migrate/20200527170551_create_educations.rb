class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.references :resume, null: false, foreign_key: true
      t.string :institution
      t.string :area
      t.string :school_url
      t.string :study_type
      t.date :start_date
      t.date :end_date
      t.float :gpa

      t.timestamps
    end
  end
end

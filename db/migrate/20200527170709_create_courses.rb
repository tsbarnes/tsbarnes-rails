class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.references :education, null: false, foreign_key: true
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end

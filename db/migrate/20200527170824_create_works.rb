class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.references :resume, null: false, foreign_key: true
      t.string :company
      t.string :position
      t.string :website
      t.date :start_date
      t.date :end_date
      t.string :summary

      t.timestamps
    end
  end
end

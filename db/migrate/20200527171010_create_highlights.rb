class CreateHighlights < ActiveRecord::Migration[6.0]
  def change
    create_table :highlights do |t|
      t.references :job, polymorphic: true
      t.string :description
      t.integer :order

      t.timestamps
    end
  end
end

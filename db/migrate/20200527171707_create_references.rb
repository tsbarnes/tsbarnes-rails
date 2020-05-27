class CreateReferences < ActiveRecord::Migration[6.0]
  def change
    create_table :references do |t|
      t.references :resume, null: false, foreign_key: true
      t.string :name
      t.string :reference
      t.integer :order

      t.timestamps
    end
  end
end

class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.references :resume, null: false, foreign_key: true
      t.string :name
      t.string :fluency
      t.integer :order

      t.timestamps
    end
  end
end

class CreateInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :interests do |t|
      t.references :resume, null: false, foreign_key: true
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end

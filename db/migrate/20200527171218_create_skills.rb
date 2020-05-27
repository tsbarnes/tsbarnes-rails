class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.references :resume, null: false, foreign_key: true
      t.string :name
      t.string :url
      t.string :level
      t.integer :order

      t.timestamps
    end
  end
end

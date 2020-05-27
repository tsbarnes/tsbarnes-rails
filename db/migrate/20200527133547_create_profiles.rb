class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :resume, null: false, foreign_key: true
      t.string :network
      t.string :icon_name
      t.string :username
      t.string :url
      t.integer :order

      t.timestamps
    end
  end
end

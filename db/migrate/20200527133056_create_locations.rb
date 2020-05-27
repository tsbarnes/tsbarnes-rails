class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :region
      t.string :region_shorthand

      t.timestamps
    end
  end
end

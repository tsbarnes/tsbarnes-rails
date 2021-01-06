class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :price
      t.string :summary
      t.string :description

      t.timestamps
    end
  end
end

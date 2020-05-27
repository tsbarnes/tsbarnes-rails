class CreateKeywords < ActiveRecord::Migration[6.0]
  def change
    create_table :keywords do |t|
      t.references :owner, polymorphic:true
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end

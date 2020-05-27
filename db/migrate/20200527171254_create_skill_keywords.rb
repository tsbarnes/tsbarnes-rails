class CreateSkillKeywords < ActiveRecord::Migration[6.0]
  def change
    create_table :skill_keywords do |t|
      t.references :skill, null: false, foreign_key: true
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end

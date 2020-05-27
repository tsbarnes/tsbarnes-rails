class CreateResumes < ActiveRecord::Migration[6.0]
  def change
    create_table :resumes do |t|
      t.string :first_name
      t.string :last_name
      t.string :label
      t.string :email
      t.string :phone
      t.string :summary
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end

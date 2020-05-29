class AddNameToResumes < ActiveRecord::Migration[6.0]
  def change
    add_column :resumes, :name, :string
    remove_column :resumes, :first_name
    remove_column :resumes, :last_name
  end
end

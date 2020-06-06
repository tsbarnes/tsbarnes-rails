class AddLocationFieldsToResume < ActiveRecord::Migration[6.0]
  def change
    add_column :resumes, :address, :string
    add_column :resumes, :city, :string
    add_column :resumes, :postal_code, :string
    add_column :resumes, :country_code, :string
    add_column :resumes, :region, :string
    add_column :resumes, :region_shorthand, :string
  end
end

class AddOrderToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :order, :integer
  end
end

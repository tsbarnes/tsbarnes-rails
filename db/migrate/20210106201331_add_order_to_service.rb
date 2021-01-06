class AddOrderToService < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :order, :integer
  end
end

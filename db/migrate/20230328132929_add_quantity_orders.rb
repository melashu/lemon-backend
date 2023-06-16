class AddQuantityOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :quantity, :integer, default: 1
  end
end

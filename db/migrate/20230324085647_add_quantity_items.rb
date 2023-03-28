class AddQuantityItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :quantity, :integer, default: 1
  end
end

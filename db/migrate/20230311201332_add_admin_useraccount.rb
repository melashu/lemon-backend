class AddAdminUseraccount < ActiveRecord::Migration[7.0]
  def change
    add_column :useraccounts, :admin, :boolean, default: false
  end
end

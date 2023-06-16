class RenamePasswordDigistToPasswordDigest < ActiveRecord::Migration[7.0]
  def change
    rename_column :useraccounts, :password_digist, :password_digist
  end
end

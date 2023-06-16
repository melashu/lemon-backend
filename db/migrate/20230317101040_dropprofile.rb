class Dropprofile < ActiveRecord::Migration[7.0]
  def change
    drop_table :profiles
    drop_table :accounts
  end
end

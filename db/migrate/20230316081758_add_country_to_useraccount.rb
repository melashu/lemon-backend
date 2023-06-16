class AddCountryToUseraccount < ActiveRecord::Migration[7.0]
  def change
    add_column :useraccounts, :country, :string
    add_column :useraccounts, :city, :string
    add_column :useraccounts, :phone, :string
    add_column :useraccounts, :about, :text
    add_column :useraccounts, :linkedin, :string
    add_column :useraccounts, :facebook, :string
    add_column :useraccounts, :twitter, :string
    add_column :useraccounts, :website, :string
  end
end

class CreateUseraccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :useraccounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digist
      t.string :email

      t.timestamps
    end
  end
end

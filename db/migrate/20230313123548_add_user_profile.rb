class AddUserProfile < ActiveRecord::Migration[7.0]
  def change
    add_reference :profiles, :useraccount, forign_key: true
  end
end

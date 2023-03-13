class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :country
      t.string :city
      t.string :phone
      t.text :about
      t.string :linkedin
      t.string :facebook
      t.string :twitter
      t.string :website

      t.timestamps
    end
  end
end

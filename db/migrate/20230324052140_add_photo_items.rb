class AddPhotoItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :photo, :string
  end
end

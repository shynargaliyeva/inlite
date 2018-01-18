class AddImageToMovie < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :image_uri, :string
  end
end

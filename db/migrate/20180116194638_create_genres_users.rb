class CreateGenresUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :genres_users do |t|
      t.references :user, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end

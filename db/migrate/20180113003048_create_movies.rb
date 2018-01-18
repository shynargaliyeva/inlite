class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :run_time
      t.string :rating
      t.text :synopsis
      t.string :psychologist
      t.text :why_recommend
      t.text :learn

      t.timestamps
    end
  end
end

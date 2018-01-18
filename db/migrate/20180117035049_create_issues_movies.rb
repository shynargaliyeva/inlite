class CreateIssuesMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :issues_movies do |t|
      t.references :movie, foreign_key: true
      t.references :issue, foreign_key: true

      t.timestamps
    end
  end
end

class CreateGenreMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :genre_movies do |t|
      t.references :genre, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end

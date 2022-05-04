class AddGenreToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :genre, :string, null: false
    add_column :movies, :released_month, :integer, null: false
    add_column :movies, :released_day, :integer, null: false
  end
end

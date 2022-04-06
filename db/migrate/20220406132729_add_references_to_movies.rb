class AddReferencesToMovies < ActiveRecord::Migration[6.0]
  def change
    add_reference :movies, :genre, null: false, foreign_key: true
  end
end

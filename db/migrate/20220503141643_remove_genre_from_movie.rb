class RemoveGenreFromMovie < ActiveRecord::Migration[6.0]
  def change
    remove_reference :movies, :genre, null: false, foreign_key: true
  end
end

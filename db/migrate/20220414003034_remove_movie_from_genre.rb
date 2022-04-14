class RemoveMovieFromGenre < ActiveRecord::Migration[6.0]
  def change
    remove_reference :genres, :movie, null: false
  end
end

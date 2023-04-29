class CreateListMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :list_movies do |t|
      t.references :movie, foreign_key: true
      t.references :movielist, foreign_key: true
      t.string  :history
      t.timestamps
    end
  end
end



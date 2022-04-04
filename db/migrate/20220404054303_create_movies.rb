class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image
      t.string :released_year
      t.string :country
      t.string :screening_time
      t.string :review
      t.string :synposis

      t.timestamps
    end
  end
end

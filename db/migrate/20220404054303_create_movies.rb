class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :image, null: false
      t.integer :released_year, null: false
      t.integer :released_month, null: false
      t.integer :released_day, null: false
      t.string :country, null: false
      t.integer :screening_time, null: false
      t.text :synposis, null: false
      t.string :feeling

      t.string :subimage
      t.integer  :watched_num, default: 0
      t.timestamps
    end
  end
end
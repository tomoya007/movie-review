class DropTableGenres < ActiveRecord::Migration[6.0]
  def change
    drop_table :genres do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end

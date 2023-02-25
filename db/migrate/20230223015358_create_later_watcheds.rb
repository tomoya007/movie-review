class CreateLaterWatcheds < ActiveRecord::Migration[6.0]
  def change
    create_table :later_watcheds do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :later, null: false, default: false
      t.boolean :watched, null: false, default: false

      t.timestamps
    end
  end
end
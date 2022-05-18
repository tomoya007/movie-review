class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text          :text, null: false
      t.references :user, foreign_key: true
      t.references :movie, foreign_key: true
      t.float :rate, null: false, default: 1

      t.timestamps
    end
  end
end
class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, foreign_key: true, null: false
      t.references :movie, foreign_key: true, null: false
      t.integer :likes_count, default: 0

      t.timestamps
    end
  end
end



      